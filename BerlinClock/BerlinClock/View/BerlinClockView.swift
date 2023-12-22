import SwiftUI

struct BerlinClockView: View {
    @StateObject private var viewModel = BerlinClockViewModelFactory.createBerlinClockViewModel()
    
    var body: some View {
        VStack {
            RoundBulbView(light: $viewModel.secondsBulb)
                .frame(width: 75, height: 75)
            BulbRowView(bulbs: $viewModel.fiveHoursRow)
            BulbRowView(bulbs: $viewModel.singleHoursRow)
            BulbRowView(bulbs: $viewModel.fiveMinutesRow)
            BulbRowView(bulbs: $viewModel.singleMinutesRow)
            Text(viewModel.timeString)
                .padding()
        }
        .padding(25)
    }
}

struct BulbRowView: View {
    @Binding var bulbs: [Bulb]
    
    var body: some View {
        HStack {
            ForEach($bulbs, id: \.id) { $bulb in
                RectangleBulbView(light: $bulb)
                    .padding(2)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 50)
        }
    }
}

struct RectangleBulbView: View {
    @Binding var light: Bulb
    
    var body: some View {
        Rectangle()
            .strokeBorder(.black, lineWidth: 2)
            .background(Rectangle().fill(light.color))
    }
}

struct RoundBulbView: View {
    @Binding var light: Bulb
    
    var body: some View {
        Circle()
            .strokeBorder(.black, lineWidth: 2)
            .background(Circle().fill(light.color))
    }
}

// MARK: - Preview

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        BerlinClockView()
    }
}
