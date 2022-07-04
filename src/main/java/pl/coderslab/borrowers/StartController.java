package pl.coderslab.borrowers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.swing.text.html.Option;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/creditForm")
@Slf4j
public class StartController {


    private StartRepository startRepository;


    private CreditPurposeRepository creditPurposeRepository;
    private BorrowerRepository borrowerRepository;
    private IncomeRepository incomeRepository;

    private EstateRepository estateRepository;

    private BorrowerDao borrowerDao;

    private IncomeDao incomeDao;

    private StartDao startDao;

    private EstateDao estateDao;


    public StartController(StartRepository startRepository, CreditPurposeRepository creditPurposeRepository, BorrowerRepository borrowerRepository, IncomeRepository incomeRepository, EstateRepository estateRepository, BorrowerDao borrowerDao, IncomeDao incomeDao, StartDao startDao, EstateDao estateDao) {
        this.startRepository = startRepository;
        this.creditPurposeRepository = creditPurposeRepository;
        this.borrowerRepository = borrowerRepository;
        this.incomeRepository = incomeRepository;
        this.estateRepository = estateRepository;
        this.borrowerDao = borrowerDao;
        this.incomeDao = incomeDao;
        this.startDao = startDao;
        this.estateDao = estateDao;
    }

    @GetMapping("/start")
    public String startForm(Model model) {
        model.addAttribute("start", new Start());
        model.addAttribute("creditPurposes", creditPurposeRepository.findAll());
        return "/start";
    }

    @PostMapping("/start")

    public String creditData(@Valid Start start, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("creditPurposes", creditPurposeRepository.findAll());
            return "/start";
        }
        start.setCreditPurpose(creditPurposeRepository.findCreditPurposeByName(start.getPurposeOfCredit()));
        startRepository.save(start);
        model.addAttribute("start", start);
        return "/result";
    }

    @GetMapping("/add/{id}")
    public String formBorrower(@PathVariable long id, Model model) {
        model.addAttribute("borrower", new Borrower());
        return "/borrowers";
    }

    @PostMapping("/add/{id}")

    public String addBorrower(@PathVariable long id, @Valid Borrower borrower, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "borrowers";
        }
        Start start = startDao.find(id);
        borrower.setStart(start);
        borrowerRepository.save(borrower);

        List<Borrower> borrowers = borrowerRepository.findAllByStart(start);
        List<Income> incomes = incomeRepository.findAllByStart(start);
        model.addAttribute("incomes", incomes);
        model.addAttribute("borrowers", borrowers);
        model.addAttribute("start", start);
        return "/borrowerList";
    }

    @GetMapping("/addIncome/{id}")
    public String formIncome(@PathVariable long id, Model model) {
        model.addAttribute("income", new Income());

        return "/income";
    }

    @PostMapping("/addIncome/{id}")
    public String addBorrower(@PathVariable long id, @Valid Income income, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "income";
        }
        Borrower borrower = borrowerDao.find(id);
        income.setBorrower(borrower);
        income.setStart(borrower.getStart());
        incomeRepository.save(income);

        Start start = startDao.find(borrower.getStart().getId());
        List<Borrower> borrowers = borrowerRepository.findAllByStart(start);
        List<Income> incomes = incomeRepository.findAllByStart(start);

        model.addAttribute("borrowers", borrowers);
        model.addAttribute("start", start);
        model.addAttribute("incomes", incomes);


        return "/borrowerList";
    }

    @GetMapping("/delete/{id}")
    public String deleteIncome(@PathVariable long id, Model model) {

        Start start = startDao.find(incomeDao.findById(id).getStart().getId());
        incomeRepository.delete(incomeDao.findById(id));
        List<Borrower> borrowers = borrowerRepository.findAllByStart(start);
        List<Income> incomes = incomeRepository.findAllByStart(start);
        model.addAttribute("borrowers", borrowers);
        model.addAttribute("start", start);
        model.addAttribute("incomes", incomes);


        return "/borrowerList";
    }

    @GetMapping("/addEstate/{id}")
    public String formEstate(@PathVariable long id, Model model) {
        model.addAttribute("estate", new Estate());

        return "/estate";
    }

    @PostMapping("/addEstate/{id}")
    public String addBorrower(@PathVariable long id, @Valid Estate estate, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "estate";
        }
        Start start = startDao.find(id);
        estate.setStart(start);
        estateRepository.save(estate);
        List<Borrower> borrowers = borrowerRepository.findAllByStart(start);
        List<Income> incomes = incomeRepository.findAllByStart(start);

        model.addAttribute("incomes", incomes);
        model.addAttribute("borrowers", borrowers);
        model.addAttribute("start", start);
        model.addAttribute("estate", estate);

        Double rate =  start.getAmount() * 1.5 / start.getCreditPeriod();

        Double SumIncome = 0.0;

        Double SumObligations = 0.0;

        Double SumHouseholdExpenses = 0.0;

        for(Income income: incomes) {
            SumIncome = income.getAverageIncome() + SumIncome;
            SumObligations = income.getTotalInstallmentOfObligations() + SumObligations;
            SumHouseholdExpenses =+ income.getTotalHouseholdExpenses() + SumHouseholdExpenses;
        }

        if(rate + SumObligations + SumHouseholdExpenses < 0.3 * SumIncome) {
            model.addAttribute("communicat", "Posiadasz zdolność kredytową");
        } else {
            model.addAttribute("communicat", "Nie posiadasz zdolności kredytowej");

        }


        return "/final";
    }
}


//    @GetMapping("/borrowerList/{id}")
//    public String borrowerList(@PathVariable Long id, Model model) {
//        Start start = startDao.find(id);
//        List<Borrower> borrowers = borrowerRepository.findAllByStart(start);
//        List<Income> incomes = incomeRepository.findAllByStart(start);
//        model.addAttribute("borrower", borrowers);
//        model.addAttribute("start", start);
//        model.addAttribute("incomes", incomes);
//
//        return "/borrowerList";
//    }


