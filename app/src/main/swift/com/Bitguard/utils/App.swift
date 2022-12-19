let fileName = "myfile.txt"
let text = "Some text to write to the file"

if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

    let fileURL = dir.appendingPathComponent(fileName)
    do {
        try text.write(to: fileURL, atomically: false, encoding: .utf8)
    } catch {
        print("Error writing to file")
    }
}
