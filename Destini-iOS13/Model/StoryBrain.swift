    //
    //  StoryBrain.swift
    //  Destini-iOS13
    //
    //  Created by Angela Yu on 08/08/2019.
    //  Copyright © 2019 The App Brewery. All rights reserved.
    //
    
    import Foundation
    
    struct StoryBrain {
        
        var storyNumber = -1
        
        let stories = [
            Story(
                title: "How much energy does bitcoin mining consume a year?",
                choice1: "5 terawatt-hours",
                choice2: "136 terawatt-hours",
                choice3: "91 terawatt-hours",
                choice4: "37 terawatt-hours",
                rightAnwer: "91 terawatt-hours",
                answerExplenation: "Bitcoin mining consumes around 91 terawatt-hours of electricity annually. That's more annual electricity use than all of Finland, which is a country of 5.5 million people. That's about the same amount of electricity consumed in the state of Washington each year, and more than a third of electricity used for residential cooling in the US annually."
            ),
            Story(
                title: "How does light pollution affect the environment?",
                choice1: "Light pollution poses a serious threat to nocturnal wildlife.",
                choice2: "Artificial light affects photosynthesis of plants.",
                choice3: "Primary consumers are more easily spotted by predators which unbalances the ecosystem.",
                choice4: "Light increases the greenhouse effect.",
                rightAnwer: "Light pollution poses a serious threat to nocturnal wildlife.",
                answerExplenation: "Light pollution has negative impacts on plant and animal physiology. It can confuse the migratory patterns of animals, alter competitive interactions of animals, change predator-prey relations, and cause physiological harm. The rhythm of life is orchestrated by the natural diurnal patterns of light and dark; so disruption to these patterns impacts the ecological dynamics."
            ),
            Story(
                title: "How many acres did wildfires burn in 2020?",
                choice1: "2,384,539 acres",
                choice2: "8,889,297 acres",
                choice3: "4,752,626 acres",
                choice4: "3,135,375 acres",
                rightAnwer: "8,889,297 acres",
                answerExplenation: "In many areas of the United States and Canada, every year brings the risk of wildfires, especially between August and November. The 2020 season was a record-setting one for the state of California and the United States as a whole. In California there were 10,488 structures damaged or destroyed and at least 31 fatalities. Almost 1,100 square miles burned in Colorado during 2020, including the three largest fires in state history. Lastly there is a significant economic damage as proven in the study of wildFires from 2018 which totaled $148.5 billion published in Nature Sustainability."
            ),
            Story(
                title: "What percentage of the worldwide fish stocks has not reach its capacity",
                choice1: "80% of the fish stocks",
                choice2: "63% of the fish stocks",
                choice3: "47% of the fish stocks",
                choice4: "20% of the fish stocks",
                rightAnwer: "20% of the fish stocks",
                answerExplenation: "According to the United Nations, 17% of fish stocks worldwide are currently overexploited; 52% are fully exploited; and 7% are depleted. This means that only an estimated 20% of worldwide fish stocks are not already at or above their capacity."
            ),
            Story(
                title: "How many people don't have access to safely drinkable water?",
                choice1: "2.2 billion individuals",
                choice2: "3.7 billion individuals",
                choice3: "97 million individuals",
                choice4: "50 million individuals",
                rightAnwer: "2.2 billion individuals",
                answerExplenation: "An estimated 2.2 billion people need access to safely managed drinking water, including 884 million currently without basic drinking water services. An estimated 4.2 billion people need access to safely managed sanitation."
            ),
            Story(
                title: "What is environmental justice?",
                choice1: "A fight against climate change",
                choice2: "Justice for our families, nation, and communities to have good livable conditions",
                choice3: "The equity between people from different cultures, races, or social background",
                choice4: "The respect to mother earth and other living creatures",
                rightAnwer: "choice4",
                answerExplenation: "Environmental justice is a very broad topic it includes many different fights that make it seem like it is a never ending cycle, but there is hope. The mentality of the younger generation has shifted to put these issues in the frontline and take actions now. This is a project that ultimately is here to teach and remind us of these problems for those who have the privilege of not being affected by them."
            )
        ]
        
        mutating func addToCounter() {
            if(storyNumber < 5) {
                storyNumber += 1;
            }
        }
        
        func getExplanation() -> String {
            return stories[storyNumber].answerExplenation
        }
        
        func getStoryTitle() -> String {
            return stories[storyNumber].title
        }
        
        func getChoice1() -> String {
            return stories[storyNumber].choice1
        }
        
        func getChoice2() -> String {
            return stories[storyNumber].choice2
        }
        
        func getChoice3() -> String {
            return stories[storyNumber].choice3
        }
        
        func getChoice4() -> String {
            return stories[storyNumber].choice4
        }
        
        func getCounter() -> Int {
            return storyNumber
        }
        
        func isRightAnswer(ans: String) -> Bool {
            if(ans == stories[storyNumber].rightAnwer){
                return true
            }else {
                return false;
            }
            
        }
        /*
        mutating func nextStory(userChoice: String) {
            
            let currentStory = stories[storyNumber]
            if userChoice == currentStory.choice1 {
                storyNumber = currentStory.choice1Destination
            } else if userChoice == currentStory.choice2 {
                storyNumber = currentStory.choice2Destination
            }
        }
         */
        
    }
    
    
