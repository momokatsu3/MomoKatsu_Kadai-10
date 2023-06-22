//
//  ViewController.swift
//  MomoKatsu_Kadai-10
//  Created by モモカツ on 2023/06/19.
// Part10 47都道府県を表示するアプリ


import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    // テーブルビューに表示する都道府県名
    let prefecturesList = ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                           "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                           "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
                           "富山県", "石川県", "福井県", "山梨県", "長野県",
                           "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                           "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                           "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                           "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                           "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                           "鹿児島県", "沖縄県"]

    // テーブルビューに表示するデータを返すメソッド（スクロールなどでページを更新する必要が出るたびに呼び出される）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "prefecturesCell", for: indexPath)

        cell.textLabel?.text = prefecturesList[indexPath.row]
        cell.detailTextLabel?.text = String(indexPath.row + 1) + "番目の都道府県です"

        // ３行毎に背景職を変更設定
        let color: UIColor
        switch indexPath.row % 3 {
        case 0:
            color = .red
        case 1:
            color = .green
        default:
            color = .blue
        }
        cell.contentView.backgroundColor = color.withAlphaComponent(0.3)

        return cell
    }

    // テーブルビューに表示するデータ個数を返すメソッド
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        //print(prefecturesList.count)
        return prefecturesList.count
    }
}
