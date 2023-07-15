package app;

import java.util.ArrayList;

public class partInformation {
    
    private String Index;
    private String WorkOrder;
    private String PartNumber;
    private String PartDescription;
    private String ToolLocation;
    private String Comment1;
    private String Comment2;
    private String Comment3;
    // private ArrayList<String> PartTCs;
    // private ArrayList<String> PartProbes;
    // private ArrayList<String> OtherSensors;


    public partInformation(String Index, String WorkOrder, String PartNumber, String PartDescription, String ToolLocation, String Comment1, String Comment2, String Comment3) {
        this.Index = Index;
        this.WorkOrder = WorkOrder;
        this.PartNumber = PartNumber;
        this.PartDescription = PartDescription;
        this.ToolLocation = ToolLocation;
        this.Comment1 = Comment1;
        this.Comment2 = Comment2;
        this.Comment3 = Comment3;
        // this.PartTCs = PartTCs;
        // this.PartProbes = PartProbes;
        // this.OtherSensors = OtherSensors;
    }

    public String getIndex() {
        return this.Index;
    }

    public String getWorkOrder() {
        return this.WorkOrder;
    }

    public String getPartNumber() {
        return this.PartNumber;
    }

    public String getPartDescription() {
        return this.PartDescription;
    }

    public String getToolLocation() {
        return this.ToolLocation;
    }

    public String getComment1() {
        return this.Comment1;
    }

    public String getComment2() {
        return this.Comment2;
    }

    public String getComment3() {
        return this.Comment3;
    }

    // public ArrayList<String> getPartTCs() {
    //     return this.PartTCs;
    // }

    // public ArrayList<String> getPartProbes() {
    //     return this.PartProbes;
    // }

    // public ArrayList<String> getOtherSensors() {
    //     return this.OtherSensors;
    // }


}
