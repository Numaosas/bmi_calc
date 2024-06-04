actor BMICalculator {

  var height : Float = 0.0;
  var weight : Float = 0.0;

  public func setHeightinM(h : Float) : async () {
    height := h;
  };

  public func setWeightinKg(w : Float) : async () {
    weight := w;
  };

  public func calculateBMI() : async (?Float, Text) {
    if (height == 0.0) {
      return (?0.0, "Height cannot be zero.");
    };

    let bmi = weight / (height * height);
    let category = if (bmi < 18.5) {
      "Underweight";
    } else if (bmi < 24.9) {
      "Normal weight";
    } else if (bmi < 29.9) {
      "Overweight";
    } else {
      "Obesity";
    };
    return (?bmi, category);
  };

  public func clearAll() : async () {
    height := 0.0;
    weight := 0.0;
  };
};
