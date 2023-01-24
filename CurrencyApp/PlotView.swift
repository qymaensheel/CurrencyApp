//
//  PlotView.swift
//  CurrencyApp
//
//  Created by Guest User on 15/11/2022.
//

import SwiftUI
import Charts
import Foundation
import Alamofire


struct PlotView: View {
    
//not working Alamofire
//    @State private var chart_json:Any
//
//    func getCharts(){
//
//        let headers: HTTPHeaders = [
//            "X-RapidAPI-Host": "currency-conversion-and-exchange-rates.p.rapidapi.com",
//            "X-RapidAPI-Key": "513f5fb0c4msh68d8f73b3824007p181c92jsn37ee2a5e232d"
//        ]
//
//        AF.request("https://currency-conversion-and-exchange-rates.p.rapidapi.com/timeseries?start_date=2022-10-10&end_date=2022-10-17&from=USD&to=PLN", headers: headers)
//            .responseJSON { response in
//                switch response.result {
//                case .success(let value):
//                    print(value)
//                    self.chart_json = value
//                case .failure(let error):
//                    print(error)
//                }
//            }
//    }
    
    @State private var input_currency = "PLN"
    let curs = ["USD", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CAD", "CDF", "CHF", "CLP", "CNY", "COP", "CRC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "EUR", "FJD", "FKP", "FOK", "GBP", "GEL", "GGP", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IMP", "INR", "IQD", "IRR", "ISK", "JEP", "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KID", "KMF", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SEK", "SGD", "SHP", "SLE", "SLL", "SOS", "SRD", "SSP", "STN", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TVD", "TWD", "TZS", "UAH", "UGX", "UYU", "UZS", "VES", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "YER", "ZAR", "ZMW", "ZW"]
    
    struct currencyHistory	: Identifiable {
        var id = UUID()
        var mount: String
        var value: Double
    }
    let data: [currencyHistory] = [
        currencyHistory(mount: "oct/01", value: 5),
        currencyHistory(mount: "oct/02", value: 4),
        currencyHistory(mount: "oct/03", value: 7),
        currencyHistory(mount: "oct/04", value: 15),
        currencyHistory(mount: "oct/05", value: 14),
        currencyHistory(mount: "oct/06", value: 27),
        currencyHistory(mount: "oct/07", value: 27),
    ]
    
    var body: some View {
        
        VStack{
            HStack {
                Text("Enter input currency:")
                Picker("Input currency", selection: $input_currency) {
                    ForEach(curs, id: \.self) {
                        Text($0)
                    }
                }
            }
            Button(action: {},
                   label: {Text("View currency history").fontWeight(.heavy).foregroundColor(Color.white).padding().background(Color.blue).cornerRadius(15)}
            )
            Spacer()
            List {
                Chart {
                    ForEach(data) {
                        AreaMark(
                            x: .value("Mount", $0.mount),
                            y: .value("Value", $0.value)
                        )
                    }
                }
                .frame(height: 250)
                .chartXAxisLabel(position: .bottom, alignment: .center) {
                    Text("Day")
                }
                .chartYAxisLabel("Value")
            }
        }
    }
    
    
    struct PlotViewPreviews: PreviewProvider {
        static var previews: some View {
            PlotView()
        }
    }
}
