//
//  CoreDataManager.swift
//  News App Testing
//
//  Created by Sathriyan on 13/06/21.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let  persistentContainer : NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "NewsAppCoreDataModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("core data failed \(error.localizedDescription)")
            }
        }
    }
    
    func getAllNews() -> [BookmarkNewsData] {
        
        let fetchRequest : NSFetchRequest<BookmarkNewsData> = BookmarkNewsData.fetchRequest()
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        }catch {
            return []
        }
    }
    
    func deleteNews(news : BookmarkNewsData) {
        
        persistentContainer.viewContext.delete(news)
        do {
            try persistentContainer.viewContext.save()
        }catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save data after delete \(error.localizedDescription)")
        }
    }
    
    func save(title : String, description : String, image : String, url : String, timeAt : String) {
        
        let bookmarkNewsData = BookmarkNewsData(context: persistentContainer.viewContext)
        bookmarkNewsData.newsTitle = title
        bookmarkNewsData.newsDescription = description
        bookmarkNewsData.newsImage = image
        bookmarkNewsData.newsUrl = url
        bookmarkNewsData.publishedTime = timeAt
    
        
        do {
            try persistentContainer.viewContext.save()
        }catch {
            print("Failed to save News \(error.localizedDescription)")
        }
    }
}
