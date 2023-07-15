package app;


public class runDetails {
    private String LoadNumber;
    private String FileName;
    private String FilePath;
    private String Equipment;
    private String RunRecipe;
    private String RunStart;
    private String RunEnd;
    private String RunDuration;
    private String FileLength;
    private String OperatorName;
    private String ExportControl;

    public runDetails(String LoadNumber, String FileName, String FilePath, String Equipment, String RunRecipe, String RunStart, String RunEnd, String RunDuration, String FileLength, String OperatorName, String ExportControl) {
        this.LoadNumber = LoadNumber;
        this.FileName = FileName;
        this.FilePath = FilePath;
        this.Equipment = Equipment;
        this.RunRecipe = RunRecipe;
        this.RunStart = RunStart;
        this.RunEnd = RunEnd;
        this.RunDuration = RunDuration;
        this.FileLength = FileLength;
        this.OperatorName = OperatorName;
        this.ExportControl = ExportControl;
    }

    public String getLoadNumber() {
        return this.LoadNumber;
    }

    public String getFileName() {
        return this.FileName;
    }

    public String getFilePath() {
        return this.FilePath;
    }

    public String getEquipment() {
        return this.Equipment;
    }

    public String getRunRecipe() {
        return this.RunRecipe;
    }

    public String getRunStart() {
        return this.RunStart;
    }

    public String getRunEnd() {
        return this.RunEnd;
    }

    public String getRunDuration() {
        return this.RunDuration;
    }

    public String getFileLength() {
        return this.FileLength;
    }

    public String getOperatorName() {
        return this.OperatorName;
    }

    public String getExportControl() {
        return this.ExportControl;
    }

}
