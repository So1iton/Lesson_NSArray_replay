//
//  AppDelegate.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//
#pragma mark - ЗАДАНИЕ
/*
 Уровень ученик:
 (просто повторение того что увидел)
 
 1. Создать класс "человек", который будет содержать в себе базовые качества - "имя", "рост", "вес", "пол", а также будет иметь метод "передвижение".
 2. Создать дочерние классы (наследники) "велосипедист", "бегун", "пловец" и переопределить метод "передвижение" в каждом из этих классов.
 3. При старте программы создать по одному объекту каждого класса и объединить их в массив.
 4. В цикле пройти по всем элементам массива и вывести на экран все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "передвижение".
 
 Если получилось пройти уровень ученик, то можно попробовать уровень студент:
 (небольшая импровизация + дополнительная мозговая деятельность)
 
 5. Создать еще одного наследника от класса человек, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам человека
 6. Метод "передвижение" реализовать таким образом, чтобы перед тем как выполнить свое собственное передвижение, он выполнял передвижение реализованное в классе человек
 7. Массив выводить в обратном порядке.
 
 Уровень Мастер:
 (простор для фантазии + больше мозговой деятельности + больше практики)
 
 8. Создать класс "животное" (не наследник класса человек!) со своими собственными базовыми свойствами (отличными от человеческих) и методом "передвижение".
 9. Унаследоваться от него и создать пару других классов с переопределенным передвижением.
 10. Объединить всех людей и животных в один массив.
 11. В цикле выводить тип объекта (человек или животное) перед тем как выводить его свойства и вызывать метод
 
 Уровень Звезда:
 (разобраться с тем чего Леша не объяснял! + реальная задача!)
 
 12. Поместить всех людей в один массив, а животных в другой массив (количество людей и животных должно быть разное)
 13. В одном цикле выводить сначала человека а потом животное, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
 
 Уровень Супермен!
 (кодинг за гранью возможного! + вероятность успеха практически 0! + реальный вызов!)
 
 14. Соединить животных и людей в одном массиве.
 15. Используя нужный метод класса NSArray отсортировать массив (как результат будет другой массив).
 16. Сортировать так: сначала люди, а потом животные, люди отсортированы по имени, а животные по кличкам
 17. Реально требует разобраться с сортировкой самому, тяжело, но достойно уважения
 */


#import "AppDelegate.h"
#import "AGHuman.h"
#import "AGCirclist.h"
#import "AGSwimmer.h"
#import "AGRunner.h"
#import "AGFighter.h"
#import "AGAnimal.h"
#import "AGDog.h"
#import "AGCat.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    AGHuman *human = [AGHuman new];
    AGCirclist *circlist = [AGCirclist new];
    AGSwimmer *swimmer = [AGSwimmer new];
    AGRunner *runner = [[AGRunner alloc]init];
    AGFighter *fighter = [AGFighter new];

    NSArray *array = [NSArray arrayWithObjects:human, circlist, swimmer, runner, fighter, nil];
    
    for(AGHuman *obj in array)
    {
        [obj moveOfHuman];
        
        NSLog(@"Name - %@ \nSurname - %@ \nWeight - %f \nHeight - %f \nPol - %@",
              obj.name,
              obj.surname,
              obj.weight,
              obj.height,
              obj.pol);
        
        if([obj isKindOfClass:[AGFighter class]]){
            AGFighter *objNew = (AGFighter*)obj;
            NSLog(@"Number of fight - %ld \nNumber of win - %ld \nNumber of false - %ld",
                  (long)objNew.valueFighting,
                  (long)objNew.valueWin,
                  (long)objNew.valueFalse);
        }
        
        
        NSLog(@"_____");
        NSLog(@"-----");
    }
    
    
    for(NSInteger i = [array count] - 1; i>=0; i--){
    
        AGHuman *humans = [array objectAtIndex:i];
        [humans moveOfHuman];
        if([humans isKindOfClass:[AGFighter class]]){
            AGFighter *objNew = (AGFighter*)humans;
            NSLog(@"Number of fight - %ld \nNumber of win - %ld \nNumber of false - %ld",
                  (long)objNew.valueFighting,
                  (long)objNew.valueWin,
                  (long)objNew.valueFalse);
        }else{NSLog(@"Name - %@ \nSurname - %@ \nWeight - %f \nHeight - %f \nPol - %@",
                    humans.name,
                    humans.surname,
                    humans.weight,
                    humans.height,
                    humans.pol);
        }
    }

    
    AGAnimal *animal = [AGAnimal new];
    AGCat *cat = [AGCat new];
    AGDog *dog = [AGDog new];
    

    NSLog(@"--------------------MASTER--------------------");
    
    NSMutableArray *arrayAll = [NSMutableArray array];
    
    NSArray *arrayHumans = [NSArray arrayWithObjects:human, circlist, swimmer, runner, fighter, nil];
    NSArray *arrayAnimals = [NSArray arrayWithObjects:animal, cat, dog, nil];
    
    [arrayAll addObjectsFromArray:arrayHumans];
    [arrayAll addObjectsFromArray:arrayAnimals];
    
    for(AGHuman *objMaster in arrayAll){
        
        if([objMaster isKindOfClass:[AGAnimal class]]){
            AGAnimal *anim = (AGAnimal*)objMaster;
            NSLog(@"%@", anim.type);
            NSLog(@"Name - %@ \nWeight - %f \nHeight - %f \nGender - %@",
                  anim.nameAnimal,
                  anim.weightAnimal,
                  anim.heightAnimal,
                  anim.genderAnimal);
            
        }else if([objMaster isKindOfClass:[AGFighter class]]){
            AGFighter *objNew = (AGFighter*)objMaster;
            NSLog(@"%@", objNew.type);
            NSLog(@"Number of fight - %ld \nNumber of win - %ld \nNumber of false - %ld",
                  (long)objNew.valueFighting,
                  (long)objNew.valueWin,
                  (long)objNew.valueFalse);
        }else{
            NSLog(@"%@", objMaster.type);
            NSLog(@"Name - %@ \nSurname - %@ \nWeight - %f \nHeight - %f \nPol - %@",
                    objMaster.name,
                    objMaster.surname,
                    objMaster.weight,
                    objMaster.height,
                    objMaster.pol);
        }
    }
    
    NSLog(@"--------------------ZVEZDA--------------------");
    
   
    NSInteger countHuman = [arrayHumans count];
    NSInteger countAnimals = [arrayAnimals count];
    
    for(int i = 0; i < (countHuman > countAnimals ? countHuman:countAnimals); i++){
        if(i < countHuman){
            AGHuman *hum = [arrayHumans objectAtIndex:i];
            if([hum isKindOfClass:[AGHuman class]]){
                NSLog(@"%@", hum.type);
                NSLog(@"Name - %@ \nSurname - %@ \nWeight - %f \nHeight - %f \nPol - %@",
                      hum.name,
                      hum.surname,
                      hum.weight,
                      hum.height,
                      hum.pol);
        
                if([hum isKindOfClass:[AGFighter class]]){
                    AGFighter *fightNew = (AGFighter*) hum;
                    NSLog(@"%@", fightNew.type);
                    NSLog(@"Number of fight - %ld \nNumber of win - %ld \nNumber of false - %ld",
                          (long)fightNew.valueFighting,
                          (long)fightNew.valueWin,
                          (long)fightNew.valueFalse);
                }
            }
        }
        
        if(i < countAnimals){
            AGAnimal *animNew = [arrayAnimals objectAtIndex:i];
            if([animNew isKindOfClass:[AGAnimal class]]){
                NSLog(@"%@", animNew.type);
                NSLog(@"Name - %@ \nWeight - %f \nHeight - %f \nGender - %@",
                      animNew.nameAnimal,
                      animNew.weightAnimal,
                      animNew.heightAnimal,
                      animNew.genderAnimal);
            }
        }
    }
    
    NSLog(@"--------------------SUPERMAN--------------------");

    //sorting with descriptor, but the propety "name" and "nameAnimal" not sorted
//    NSSortDescriptor *sortingFirstElement = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
//    NSSortDescriptor *sortingSecondElement = [NSSortDescriptor sortDescriptorWithKey:@"type" ascending:NO];
//    [arrayAll sortUsingDescriptors:[NSArray arrayWithObjects:sortingSecondElement, sortingFirstElement, nil]];
//    
//    for(AGHuman *allObject in arrayAll){
//        NSLog(@"type - %@ \nname - %@", allObject.type, allObject.name);
//    }
    
    //sorting with block
    NSArray *sortingWithBlocks = [arrayAll sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if([obj1 isKindOfClass:[AGHuman class]]&&[obj2 isKindOfClass:[AGHuman class]]){
            return [[obj1 name] compare:[obj2 name]];
        }else if([obj1 isKindOfClass:[AGAnimal class]]&&[obj2 isKindOfClass:[AGAnimal class]]){
            return [[obj1 nameAnimal] compare:[obj2 nameAnimal]];
        }else if([obj1 isKindOfClass:[AGHuman class]]){
            return NSOrderedAscending;
        }else{
            return NSOrderedDescending;
        }
        }];
    
    for (int i = 0; i < sortingWithBlocks.count ; i++){
        id sortObj = sortingWithBlocks[i];
        NSLog(@"%@", sortObj);
    
        if([sortObj isKindOfClass:[AGHuman class]]){
                AGHuman *humSortNew = (AGHuman*) sortObj;
            
                //NSLog(@"%@", humSortNew.type);
                NSLog(@"Name - %@ \nSurname - %@ \nWeight - %f \nHeight - %f \nPol - %@",
                  humSortNew.name,
                  humSortNew.surname,
                  humSortNew.weight,
                  humSortNew.height,
                  humSortNew.pol);
            
            if([sortObj isKindOfClass:[AGFighter class]]){
                AGFighter *fightSortNew = (AGFighter*) sortObj;
                
                //NSLog(@"%@", fightSortNew.type);
                NSLog(@"Number of fight - %ld \nNumber of win - %ld \nNumber of false - %ld",
                      (long)fightSortNew.valueFighting,
                      (long)fightSortNew.valueWin,
                      (long)fightSortNew.valueFalse);
            }
        }else if([sortObj isKindOfClass:[AGAnimal class]]){
                AGAnimal *animSortNew = (AGAnimal*) sortObj;
            
                //NSLog(@"%@", animSortNew.type);
                NSLog(@"Name - %@ \nWeight - %f \nHeight - %f \nGender - %@",
                      animSortNew.nameAnimal,
                      animSortNew.weightAnimal,
                      animSortNew.heightAnimal,
                      animSortNew.genderAnimal);
    }
    }
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
