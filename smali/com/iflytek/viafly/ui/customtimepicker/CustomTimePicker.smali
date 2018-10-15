.class public Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;
.super Landroid/widget/FrameLayout;
.source "CustomTimePicker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;,
        Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/TextView;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/TextView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/TextView;

.field private mOnTimeChangedListener:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mUnitHour:Landroid/widget/TextView;

.field private mUnitMin:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const v0, 0x7f010004

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const v8, 0x7f0b0522

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsEnabled:Z

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 145
    const v2, 0x7f030080

    .line 147
    .local v2, "layoutResourceId":I
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 149
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    const v3, 0x7f0b0393

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 153
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    new-instance v4, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setOnValueChangedListener(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;)V

    .line 166
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinnerInput:Landroid/widget/TextView;

    .line 167
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinnerInput:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 170
    const v3, 0x7f0b0394

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitHour:Landroid/widget/TextView;

    .line 171
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitHour:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitHour:Landroid/widget/TextView;

    const v4, 0x7f0c02e5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :cond_0
    const v3, 0x7f0b0396

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitMin:Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitMin:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitMin:Landroid/widget/TextView;

    const v4, 0x7f0c02e6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_1
    const v3, 0x7f0b0395

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 183
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMinValue(I)V

    .line 184
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMaxValue(I)V

    .line 185
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 186
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getTwoDigitFormatter()Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setFormatter(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;)V

    .line 187
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    new-instance v4, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setOnValueChangedListener(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;)V

    .line 210
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinnerInput:Landroid/widget/TextView;

    .line 211
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinnerInput:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 214
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 217
    const v3, 0x7f0b0397

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "amPmView":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 219
    iput-object v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 220
    iput-object v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinnerInput:Landroid/widget/TextView;

    .line 221
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 222
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v4, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$4;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$4;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->updateHourControl()V

    .line 251
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->updateAmPmControl()V

    .line 253
    sget-object v3, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setOnTimeChangedListener(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;)V

    .line 256
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentHour(I)V

    .line 257
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentMinute(I)V

    .line 259
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setEnabled(Z)V

    .line 264
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 265
    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setImportantForAccessibility(I)V

    .line 267
    :cond_3
    return-void

    .line 231
    .restart local v0    # "amPmView":Landroid/view/View;
    :cond_4
    iput-object v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 232
    check-cast v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 233
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMinValue(I)V

    .line 234
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3, v6}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMaxValue(I)V

    .line 235
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    new-instance v4, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setOnValueChangedListener(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;)V

    .line 245
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinnerInput:Landroid/widget/TextView;

    .line 246
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinnerInput:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 549
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->sendAccessibilityEvent(I)V

    .line 550
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mOnTimeChangedListener:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mOnTimeChangedListener:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;II)V

    .line 553
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 318
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setVisibility(I)V

    .line 545
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->sendAccessibilityEvent(I)V

    .line 546
    return-void

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_1
    iget-boolean v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 537
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    if-eqz v2, :cond_3

    .line 538
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValue(I)V

    .line 539
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 536
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 541
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMinValue(I)V

    .line 519
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMaxValue(I)V

    .line 520
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getTwoDigitFormatter()Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setFormatter(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;)V

    .line 526
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMinValue(I)V

    .line 523
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMaxValue(I)V

    .line 524
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setFormatter(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v0

    .line 397
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 399
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 400
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 402
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 305
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 306
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 507
    const-class v0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 513
    const-class v0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 491
    const/4 v0, 0x1

    .line 492
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 493
    or-int/lit16 v0, v0, 0x80

    .line 497
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentHour()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 498
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 499
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mTempCalendar:Ljava/util/Calendar;

    .line 500
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 499
    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    return-void

    .line 495
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 377
    move-object v0, p1

    check-cast v0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;

    .line 378
    .local v0, "ss":Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 379
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentHour(I)V

    .line 380
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentMinute(I)V

    .line 381
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 371
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 372
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "currentHour"    # I

    .prologue
    const/16 v1, 0xc

    .line 411
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    if-lt p1, v1, :cond_3

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsAm:Z

    .line 418
    if-le p1, v1, :cond_1

    .line 419
    add-int/lit8 p1, p1, -0xc

    .line 427
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->updateAmPmControl()V

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValue(I)V

    .line 430
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->onTimeChanged()V

    goto :goto_0

    .line 422
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsAm:Z

    .line 423
    if-nez p1, :cond_1

    .line 424
    const/16 p1, 0xc

    goto :goto_1
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "currentMinute"    # I

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValue(I)V

    .line 473
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 271
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsEnabled:Z

    if-ne v1, p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mMinuteSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitHour:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitHour:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitMin:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitMin:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mHourSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setEnabled(Z)V

    .line 283
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmSpinner:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setEnabled(Z)V

    .line 288
    :goto_1
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIsEnabled:Z

    .line 290
    if-nez p1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 292
    .local v0, "color":I
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mUnitMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 286
    .end local v0    # "color":I
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 439
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 449
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mIs24HourView:Z

    .line 444
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->getCurrentHour()I

    move-result v0

    .line 445
    .local v0, "currentHour":I
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->updateHourControl()V

    .line 447
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentHour(I)V

    .line 448
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->mOnTimeChangedListener:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;

    .line 390
    return-void
.end method
