//
//  ViewController.swift
//  tvOSStarter
//
//  Created by Miles Johnson on 2/1/16.
//  Copyright © 2016 ALV Software. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    let managedObjectContext: NSManagedObjectContext! = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    var questionArray = [Questions]()
    @IBOutlet var choice0Button       :UIButton!
    @IBOutlet var choice1Button       :UIButton!
    @IBOutlet var choice2Button       :UIButton!
    @IBOutlet var choice3Button       :UIButton!
    @IBOutlet var questionTextLabel   :UILabel!
    @IBOutlet var questionScoreLabel  :UILabel!
    @IBOutlet var questionNumberLabel :UILabel!
    var questionCounter = 0
    var userScore = 0
    //MARK: Temp Add Questions
    func tempAddQuestions () {
        let entityDescriptionQuestions : NSEntityDescription! = NSEntityDescription.entityForName("Questions", inManagedObjectContext: managedObjectContext)
        
        let newQuestion = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion.questionText = "Which of these were not performance spaces used in the Renaissance?"
        newQuestion.questionChoice0 = "Church Cemetaries"
        newQuestion.questionChoice1 = "Courtyards"
        newQuestion.questionChoice2 = "Open Air Theatres"
        newQuestion.questionChoice3 = "Permanant Theatres"
        newQuestion.questionAnswer = 0
        newQuestion.questionNumber = 0
        
        let newQuestion1 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion1.questionText = "Everyman is a _______"
        newQuestion1.questionChoice0 = "Comedy"
        newQuestion1.questionChoice1 = "Morality Play"
        newQuestion1.questionChoice2 = "Tradgedy"
        newQuestion1.questionChoice3 = "Satire"
        newQuestion1.questionAnswer = 1
        newQuestion1.questionNumber = 1

        
        let newQuestion2 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion2.questionText = "Who Aphra Behn?"
        newQuestion2.questionChoice0 = "1st female professional actress"
        newQuestion2.questionChoice1 = "1st female professional playwright"
        newQuestion2.questionChoice2 = "1st female professional dacner"
        newQuestion2.questionChoice3 = "1st female professional doctor"
        newQuestion2.questionAnswer = 0
        newQuestion2.questionNumber = 2
        
        let newQuestion3 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion3.questionText = "This fesitval became the most important for theatre in athens greece"
        newQuestion3.questionChoice0 = "Mechane"
        newQuestion3.questionChoice1 = "City Dionysia"
        newQuestion3.questionChoice2 = "Aeschylus"
        newQuestion3.questionChoice3 = "Theatron"
        newQuestion3.questionAnswer = 0
        newQuestion3.questionNumber = 3
        
        let newQuestion4 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion4.questionText = "Name the Italian innovation of creating the illusion of visial realism where scenery becomes smaller the farther away it gets"
        newQuestion4.questionChoice0 = "Angled Wings"
        newQuestion4.questionChoice1 = "Painted Shutters"
        newQuestion4.questionChoice2 = "Lighting and shadows"
        newQuestion4.questionChoice3 = "Perspective"
        newQuestion4.questionAnswer = 3
        newQuestion4.questionNumber = 4
        
        let newQuestion5 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion5.questionText = "In Oedipus The King, Oedipus killed his father and married his_______?"
        newQuestion5.questionChoice0 = "Mother"
        newQuestion5.questionChoice1 = "Aunt"
        newQuestion5.questionChoice2 = "Sister"
        newQuestion5.questionChoice3 = "Brother"
        newQuestion5.questionAnswer = 0
        newQuestion5.questionNumber = 5
        
        let newQuestion6 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion6.questionText = "Who invented the oil lamp?"
        newQuestion6.questionChoice0 = "James Churchhill"
        newQuestion6.questionChoice1 = "Aime Argand"
        newQuestion6.questionChoice2 = "Sara Rosiello"
        newQuestion6.questionChoice3 = "Samuel Griswald"
        newQuestion6.questionAnswer = 1
        newQuestion6.questionNumber = 6
        
        let newQuestion7 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion7.questionText = "Who are 2 playwrights from the English Renaissance?"
        newQuestion7.questionChoice0 = "Torelli and Jonson"
        newQuestion7.questionChoice1 = "Betterton and Burbage"
        newQuestion7.questionChoice2 = "Shakespeare and Marlowe"
        newQuestion7.questionChoice3 = "Williams and Aristotle"
        newQuestion7.questionAnswer = 2
        newQuestion7.questionNumber = 7
        
        let newQuestion8 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion8.questionText = "Who Was Nell Gwyn?"
        newQuestion8.questionChoice0 = "An Actress"
        newQuestion8.questionChoice1 = "A Singer"
        newQuestion8.questionChoice2 = "A Dutchess"
        newQuestion8.questionChoice3 = "An Actor"
        newQuestion8.questionAnswer = 0
        newQuestion8.questionNumber = 8
        
        let newQuestion9 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion9.questionText = "All of the following were actors in the restoration period except"
        newQuestion9.questionChoice0 = "Nell Gwynn"
        newQuestion9.questionChoice1 = "Anne Bracegirdle"
        newQuestion9.questionChoice2 = "Anne Hathaway"
        newQuestion9.questionChoice3 = "Margaret Hughes"
        newQuestion9.questionAnswer = 2
        newQuestion9.questionNumber = 9
        
        let newQuestion11 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion11.questionText = "Who was responsible for deciding which plays would be performed during antiquity?"
        newQuestion11.questionChoice0 = "choregoi"
        newQuestion11.questionChoice1 = "playwright"
        newQuestion11.questionChoice2 = "archon"
        newQuestion11.questionChoice3 = "actors"
        newQuestion11.questionAnswer = 3
        newQuestion11.questionNumber = 11
        
        let newQuestion12 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion12.questionText = "What types of plays existed in medieval theater?"
        newQuestion12.questionChoice0 = "Mystery, Miracle, Morality"
        newQuestion12.questionChoice1 = "Tragedy, Comedy and Drama"
        newQuestion12.questionChoice2 = "Passion, Comedy, Mystery"
        newQuestion12.questionChoice3 = "Religious, Vernacular and History"
        newQuestion12.questionAnswer = 0
        newQuestion12.questionNumber = 12
        
        let newQuestion13 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion13.questionText = "What was NOT a role of the playwright in ancient theater?"
        newQuestion13.questionChoice0 = "Writes the play"
        newQuestion13.questionChoice1 = "Modern day director"
        newQuestion13.questionChoice2 = "Acts in play"
        newQuestion13.questionChoice3 = "Modern day producer"
        newQuestion13.questionAnswer = 3
        newQuestion13.questionNumber = 13
        
        let newQuestion14 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion14.questionText = "Who lifted the ban on theater by the Puritan parliament in England in 1642?"
        newQuestion14.questionChoice0 = "King Charles I"
        newQuestion14.questionChoice1 = "Queen Elizabeth I"
        newQuestion14.questionChoice2 = "King James I"
        newQuestion14.questionChoice3 = "King Charles II"
        newQuestion14.questionAnswer = 0
        newQuestion14.questionNumber = 14
        
        let newQuestion15 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion15.questionText = "He was the first playwright to add a second actor, making face to face dialogue possible?"
        newQuestion15.questionChoice0 = "Aeschelus"
        newQuestion15.questionChoice1 = "Thespis" //added the first actor to step out from the chorus
        newQuestion15.questionChoice2 = "Euripides"
        newQuestion15.questionChoice3 = "Sophocles"
        newQuestion15.questionAnswer = 0
        newQuestion15.questionNumber = 15
        
        let newQuestion16 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion16.questionText = "By the end of 17th century, what variety of lighting was not in use?"
        newQuestion16.questionChoice0 = "Sconces"
        newQuestion16.questionChoice1 = "Natural light"
        newQuestion16.questionChoice2 = "Chandeliers"
        newQuestion16.questionChoice3 = "Footlights"
        newQuestion16.questionAnswer = 1
        newQuestion16.questionNumber = 16
        
        let newQuestion17 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion17.questionText = "What was the original name of the theater company Shakespeare led?"
        newQuestion17.questionChoice0 = "The King's Men"
        newQuestion17.questionChoice1 = "The chamberlain's men"
        newQuestion17.questionChoice2 = "The admiral's men"
        newQuestion17.questionChoice3 = "The Queen's men"
        newQuestion17.questionAnswer = 1
        newQuestion17.questionNumber = 17
        
        let newQuestion18 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion18.questionText = "This playwirght was the second most popular playright renaissance"
        newQuestion18.questionChoice0 = "William Shakespeare"
        newQuestion18.questionChoice1 = "Christopher Marlowe"
        newQuestion18.questionChoice2 = "George Bernard Shaw"
        newQuestion18.questionChoice3 = "Ben Jonson"
        newQuestion18.questionAnswer = 1
        newQuestion18.questionNumber = 18
        
        let newQuestion19 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion19.questionText = "Which of the following is true of the church in the Middle Ages?"
        newQuestion19.questionChoice0 = "It honored actors"
        newQuestion19.questionChoice1 = "It abolished theater"
        newQuestion19.questionChoice2 = "It aimed to teach moral lessons"
        newQuestion19.questionChoice3 = "Playwrights received church burials"
        newQuestion19.questionAnswer = 2
        newQuestion19.questionNumber = 19
        
        let newQuestion20 = Questions(entity: entityDescriptionQuestions, insertIntoManagedObjectContext: managedObjectContext)
        newQuestion20.questionText = "This group, which sang and danced, as well as recited, was a integral and unique feature of greek drama"
        newQuestion20.questionChoice0 = "The Poetics"
        newQuestion20.questionChoice1 = "The Cyclops"
        newQuestion20.questionChoice2 = "The Chorus"
        newQuestion20.questionChoice3 = "Thespis"
        newQuestion20.questionAnswer = 3
        newQuestion20.questionNumber = 20
        
        appDelegate.saveContext()
    }

    //MARK: Fetch Questions
    func fetchQuestions() {
        let fetchRequest :NSFetchRequest = NSFetchRequest(entityName: "Questions")
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "questionNumber", ascending: true)]
        do {
            let results = try self.managedObjectContext!.executeFetchRequest(fetchRequest)
            questionArray = (results as! [Questions])
        } catch let error as NSError {
            print("error in fetch handling \(error)")
        } catch {
            print("Error")
        }
    }

    //MARK: Next Question
    func nextQuestion() {
        questionNumberLabel.text = "Q: \(questionCounter + 1)/\(questionArray.count)"
        if questionCounter > questionArray.count - 1 {
            print("Entering If Statement")
            questionCounter = 0
            let gameOverAlert = UIAlertController(title: "Game Over", message:
                "Your Score Was: \(userScore)", preferredStyle: UIAlertControllerStyle.Alert)
            gameOverAlert.addAction(UIAlertAction(title: "New Game", style: .Default, handler: { (action) -> Void in
                self.userScore = 0
                self.nextQuestion()
            }))
            self.presentViewController(gameOverAlert, animated: true, completion: nil)
        }
        questionTextLabel.text = questionArray[questionCounter].questionText
        choice0Button.setTitle(questionArray[questionCounter].questionChoice0, forState: .Normal)
        choice1Button.setTitle(questionArray[questionCounter].questionChoice1, forState: .Normal)
        choice2Button.setTitle(questionArray[questionCounter].questionChoice2, forState: .Normal)
        choice3Button.setTitle(questionArray[questionCounter].questionChoice3, forState: .Normal)
        
        questionScoreLabel.text = "Score: \(userScore)   "

    }
    
    //MARK: Evaluating Answers
    @IBAction func choicePressed(sender: UIButton) {
        let selectedButtonIndex = sender.tag
        if questionArray[questionCounter].questionAnswer == selectedButtonIndex {
            
            let correctAlert = UIAlertController(title: "Correct", message:
                "Nice Job!", preferredStyle: UIAlertControllerStyle.Alert)
            correctAlert.addAction(UIAlertAction(title: "Next Question", style: .Default, handler: { (action) -> Void in
                self.userScore += 10
                self.nextQuestion()
            }))
            self.presentViewController(correctAlert, animated: true, completion: nil)
        } else {
            var correctAnswer = ""
            switch questionArray[questionCounter].questionAnswer as! Int {
            case 0:
                correctAnswer = questionArray[questionCounter].questionChoice0!
            case 1:
                correctAnswer = questionArray[questionCounter].questionChoice1!
            case 2:
                correctAnswer = questionArray[questionCounter].questionChoice2!
            case 3:
                correctAnswer = questionArray[questionCounter].questionChoice3!
            default:
                print("Default")
                
            }
            let correctAlert = UIAlertController(title: "Wrong", message:
                "The correct answer was: \(correctAnswer)", preferredStyle: UIAlertControllerStyle.Alert)
            correctAlert.addAction(UIAlertAction(title: "Next Question", style: .Default, handler: { (action) -> Void in
                self.userScore -= 5
                self.nextQuestion()
            }))
            self.presentViewController(correctAlert, animated: true, completion: nil)
        }
        print(questionCounter)
        questionCounter++
    }
    
    //MARK: System Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        //tempAddQuestions()
        fetchQuestions()
        print(questionArray.count)
        
        for ques in questionArray {
            print(ques.questionText)
        }
        
        questionCounter = 0
        nextQuestion()
    }
    override func viewWillAppear(animated: Bool) {
        userScore = 0
        questionScoreLabel.text = "Score: \(userScore)   "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

