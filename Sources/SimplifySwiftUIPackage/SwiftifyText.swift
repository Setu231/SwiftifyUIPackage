//
//  SwiftifyText.swift
//
//
//  Created by Setu Desai on 2/12/24.
//

@available(iOS 15.0, macOS 12.0, tvOS 14.0, watchOS 7.0, *)
extension Text {
    /// A font multiple background color style
    public func foregroundLinearGradient(colors: [Color], startPoint: UnitPoint, endPoint: UnitPoint) -> some View {
        self.overlay {
            LinearGradient(colors: colors, startPoint: startPoint, endPoint: endPoint).mask(self)
        }
    }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Text {
    /// A font with the title and weight using inherited enums
    public func textFont(fontStyle: TextFontStyle) -> Text {
        self.font(fontStyle.fontType)
            .fontWeight(fontStyle.fontWeight)
    }
}

public enum TextFontStyle {
    ///LargeTitle and UltraLight
    case XXLarge01
    ///LargeTitle and Thin
    case XXLarge02
    ///LargeTitle and Light
    case XXLarge03
    ///LargeTitle and Regular
    case XXLarge04
    ///LargeTitle and Medium
    case XXLarge05
    ///LargeTitle and Semibold
    case XXLarge06
    ///LargeTitle and Heavy
    case XXLarge07
    ///LargeTitle and Back
    case XXLarge08
    ///Title and UltraLight
    case XLarge01
    ///Title and Thin
    case XLarge02
    ///Title and Light
    case XLarge03
    ///Title and Regular
    case XLarge04
    ///Title and Medium
    case XLarge05
    ///Title and Semibold
    case XLarge06
    ///Title and Heavy
    case XLarge07
    ///Title and Back
    case XLarge08
    ///Title2 and UltraLight
    case Large01
    ///Title2 and Thin
    case Large02
    ///Title2 and Light
    case Large03
    ///Title2 and Regular
    case Large04
    ///Title2 and Medium
    case Large05
    ///Title2 and Semibold
    case Large06
    ///Title2 and Heavy
    case Large07
    ///Title2 and Back
    case Large08
    ///Subheadline and UltraLight
    case XXMedium01
    ///Subheadline and Thin
    case XXMedium02
    ///Subheadline and Light
    case XXMedium03
    ///Subheadline and Regular
    case XXMedium04
    ///Subheadline and Medium
    case XXMedium05
    ///Subheadline and Semibold
    case XXMedium06
    ///Subheadline and Heavy
    case XXMedium07
    ///Subheadline and Back
    case XXMedium08
    ///Headline and UltraLight
    case XMedium01
    ///Headline and Thin
    case XMedium02
    ///Headline and Light
    case XMedium03
    ///Headline and Regular
    case XMedium04
    ///Headline and Medium
    case XMedium05
    ///Headline and Semibold
    case XMedium06
    ///Headline and Heavy
    case XMedium07
    ///Headline and Back
    case XMedium08
    ///Title3 and UltraLight
    case Medium01
    ///Title3 and Thin
    case Medium02
    ///Title3 and Light
    case Medium03
    ///Title3 and Regular
    case Medium04
    ///Title3 and Medium
    case Medium05
    ///Title3 and Semibold
    case Medium06
    ///Title3 and Heavy
    case Medium07
    ///Title3 and Back
    case Medium08
    ///Footnote and UltraLight
    case XXSmall01
    ///Footnote and Thin
    case XXSmall02
    ///Footnote and Light
    case XXSmall03
    ///Footnote and Regular
    case XXSmall04
    ///Footnote and Medium
    case XXSmall05
    ///Footnote and Semibold
    case XXSmall06
    ///Footnote and Heavy
    case XXSmall07
    ///Footnote and Back
    case XXSmall08
    ///Callout and UltraLight
    case XSmall01
    ///Callout and Thin
    case XSmall02
    ///Callout and Light
    case XSmall03
    ///Callout and Regular
    case XSmall04
    ///Callout and Medium
    case XSmall05
    ///Callout and  Semibold
    case XSmall06
    ///Callout and Heavy
    case XSmall07
    ///Callout and Back
    case XSmall08
    ///Body and UltraLight
    case Small01
    ///Body and Thin
    case Small02
    ///Body and Light
    case Small03
    ///Body and Regular
    case Small04
    ///Body and  Medium
    case Small05
    ///Body and Semibold
    case Small06
    ///Body and Heavy
    case Small07
    ///Body and Back
    case Small08
    ///Caption and UltraLight
    case Tiny01
    ///Caption and Thin
    case Tiny02
    ///Caption and  Light
    case Tiny03
    ///Caption and Regular
    case Tiny04
    ///Caption and Medium
    case Tiny05
    ///Caption and Semibold
    case Tiny06
    ///Caption and Heavy
    case Tiny07
    ///Caption and Back
    case Tiny08
    
    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    var fontType: Font {
        switch self {
        case .XXLarge01, .XXLarge02, .XXLarge03, .XXLarge04, .XXLarge05, .XXLarge06, .XXLarge07, .XXLarge08:
                .largeTitle
        case .XLarge01, .XLarge02, .XLarge03, .XLarge04, .XLarge05, .XLarge06, .XLarge07, .XLarge08:
                .title
        case .Large01, .Large02, .Large03, .Large04, .Large05, .Large06, .Large07, .Large08:
                .title2
        case .Medium01, .Medium02, .Medium03, .Medium04, .Medium05, .Medium06, .Medium07, .Medium08:
                .title3
        case .XMedium01, .XMedium02, .XMedium03, .XMedium04, .XMedium05, .XMedium06, .XMedium07, .XMedium08:
                .headline
        case .XXMedium01, .XXMedium02, .XXMedium03, .XXMedium04, .XXMedium05, .XXMedium06, .XXMedium07, .XXMedium08:
                .subheadline
        case .Small01, .Small02, .Small03, .Small04, .Small05, .Small06, .Small07, .Small08:
                .body
        case .XSmall01, .XSmall02, .XSmall03, .XSmall04, .XSmall05, .XSmall06, .XSmall07, .XSmall08:
                .callout
        case .XXSmall01, .XXSmall02, .XXSmall03, .XXSmall04, .XXSmall05, .XXSmall06, .XXSmall07, .XXSmall08:
                .footnote
        case .Tiny01, .Tiny02, .Tiny03, .Tiny04, .Tiny05, .Tiny06, .Tiny07, .Tiny08:
                .caption
        }
    }
    
    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    var fontWeight: Font.Weight {
        switch self {
        case .XXLarge01, .XLarge01, .Large01, .XXMedium01, .XMedium01, .Medium01, .XXSmall01, .XSmall01,  .Small01, .Tiny01:
                .ultraLight
        case .XXLarge02, .XLarge02, .Large02, .XXMedium02, .XMedium02, .Medium02, .XXSmall02, .XSmall02, .Small02, .Tiny02:
                .thin
        case .XXLarge03, .XLarge03, .Large03, .XXMedium03, .XMedium03, .Medium03, .XXSmall03, .XSmall03, .Small03, .Tiny03:
                .light
        case .XXLarge04, .XLarge04, .Large04, .XXMedium04, .XMedium04, .Medium04, .XXSmall04, .XSmall04, .Small04, .Tiny04:
                .regular
        case .XXLarge05, .XLarge05, .Large05, .XXMedium05, .XMedium05, .Medium05, .XXSmall05, .XSmall05, .Small05, .Tiny05:
                .medium
        case .XXLarge06, .XLarge06, .Large06, .XXMedium06, .XMedium06, .Medium06, .XXSmall06, .XSmall06, .Small06, .Tiny06:
                .semibold
        case .XXLarge07, .XLarge07, .Large07, .XXMedium07, .XMedium07, .Medium07, .XXSmall07, .XSmall07, .Small07, .Tiny07:
                .heavy
        case .XXLarge08, .XLarge08, .Large08, .XXMedium08, .XMedium08, .Medium08, .XXSmall08, .XSmall08, .Small08, .Tiny08:
                .black
        }
    }
}
