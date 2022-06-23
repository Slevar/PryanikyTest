//
//  HomeViewModel.swift
//  Pryaniky.com
//
//  Created by Вардан Мукучян on 23.06.2022.
//

import Foundation
import Combine
import RxSwift
 
class HomeViewModel: ObservableObject {
    
    @Published var datumArray: [Datum] = []
    @Published var infoArray: [Datum] = []
    
    private var cancellable = Set<AnyCancellable>()
    private let disposeBag = DisposeBag()
    
    
    init() {
        addSubscribers()
    }
    
    // "Подписываемся" и соответственно получаем дату из нашего ApiClient реактивным методом, полученную дату устанавливаем в переменную "datumArray"
    func addSubscribers() {

        ApiClient.getDara()
            .observe(on: MainScheduler.instance)
            .map(mapDataToDatum)
            .subscribe(onNext: { [weak self] postsList in
                self?.infoArray = postsList
            }, onError: { error in
                switch error {
                case ApiError.conflict:
                    print("Conflict error")
                case ApiError.forbidden:
                    print("Forbidden error")
                case ApiError.notFound:
                    print("Not found error")
                default:
                    print("Unknown error:", error)
                }
            })
            .disposed(by: disposeBag)
    }
}

extension HomeViewModel {
    
    // Функция мапинга в полученной даты в отсортированный по указанным в ТЗ "требованиям" массив с которым далее будем работать
    func mapDataToDatum(mainDataModel: MainDataModel?) -> [Datum] {
        
        var newMassive: [Datum] = []
        guard let mainDataModel = mainDataModel else {
            return []
        }
        for element in mainDataModel.view {
            for datum in mainDataModel.data {
                if datum.name == element {
                    newMassive.append(datum)
                }
            }
        }
        return newMassive
    }
}
