//
//  ViewController.swift
//  Camera
//
//  Created by Tobioka on 2017/10/25.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

/// [marker1]
import AVFoundation
/// [marker1]

class ViewController: UIViewController {

    /// [marker2]
    @IBOutlet weak var previewView: UIView!
    @IBOutlet weak var resultView: UIImageView!
    /// [marker2]

    /// [marker3]
    let output = AVCapturePhotoOutput() // カメラの出力を取得するクラス
    /// [marker3]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// [marker4]
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // カメラデバイスの入力を取得
        guard let device = AVCaptureDevice.default(for: .video),
            let input = try? AVCaptureDeviceInput(device: device) else {
                return
        }

        // カメラをキャプチャするためのセッションとプレビュー用のレイヤーを取得
        let session = AVCaptureSession()
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)

        // イメージビューと同じ表示になるようにプレビューを設定
        previewLayer.frame = previewView.bounds
        previewLayer.videoGravity = .resizeAspectFill
        previewView.layer.addSublayer(previewLayer)

        // セッションをスタート
        session.addInput(input)
        session.addOutput(output)
        session.startRunning()
    }
    /// [marker4]

    /// [marker5]
    @IBAction func onTap(_ sender: Any) {
        let settions = AVCapturePhotoSettings()             // デフォルト設定を使用
        output.capturePhoto(with: settions, delegate: self) // 写真を撮影
    }
    /// [marker5]
}

/// [marker6]
/// [marker7]
extension ViewController: AVCapturePhotoCaptureDelegate {
/// [marker7]

    // iOS11ではこちらが動く
    @available(iOS 11.0, *)
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if let data = photo.fileDataRepresentation() {
            resultView.image = UIImage(data: data)
        }
    }

    // iOS10ではこちらが動く
    @available(iOS 10.0, *)
    /// [marker8]
    func photoOutput(_ captureOutput: AVCapturePhotoOutput, didFinishProcessingPhoto photoSampleBuffer: CMSampleBuffer?, previewPhoto previewPhotoSampleBuffer: CMSampleBuffer?, resolvedSettings: AVCaptureResolvedPhotoSettings, bracketSettings: AVCaptureBracketedStillImageSettings?, error: Error?) {
        guard let photoSampleBuffer = photoSampleBuffer else { return }
        if let data = AVCapturePhotoOutput.jpegPhotoDataRepresentation(forJPEGSampleBuffer: photoSampleBuffer, previewPhotoSampleBuffer: previewPhotoSampleBuffer) {
            resultView.image = UIImage(data: data)
        }
    }
    /// [marker8]
}
/// [marker6]
