//
//  PaintView.swift
//  Touches
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
class PaintView: UIView {

    var lines = [[CGPoint]]()
    var points = [CGPoint]()

    // 今までの履歴であるlinesと現在描画中のpointsを画面に表示する
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        
        for line in [points] + lines {
            guard line.count > 1 else { return }
            path.move(to: line[0])          // 最初の点に移動する
            
            for point in line.dropFirst() {
                path.addLine(to: point)     // 全ての点を線で結ぶ
            }
        }
        
        path.lineWidth = 3.0
        path.lineCapStyle = .round
        path.lineJoinStyle = .round
        path.stroke()
    }

    // タッチが開始したら現在の座標をpointsに追加
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: self) else { return }
        points.append(point)
    }
    
    // タッチが移動したら現在の座標をpointsに追加して、画面を更新
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: self) else { return }
        points.append(point)
        
        setNeedsDisplay()   // 画面の再描画が必要なことをシステムに伝えて更新する
    }
    
    // タッチが終了したら保存しておいた座標をlinesに追加
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append(points)
        points = []
    }
}
/// [marker1]

