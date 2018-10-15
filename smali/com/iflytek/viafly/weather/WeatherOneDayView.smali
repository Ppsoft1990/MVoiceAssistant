.class public Lcom/iflytek/viafly/weather/WeatherOneDayView;
.super Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;
.source "WeatherOneDayView.java"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorTipID"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a:Z

    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDayView;->b:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300ec

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->setErrorTip(I)V

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/weather/WeatherOneDay;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "weatherOneDay"    # Lcom/iflytek/viafly/weather/WeatherOneDay;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a:Z

    .line 27
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDayView;->b:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a(Lcom/iflytek/viafly/weather/WeatherOneDay;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const v1, 0x7f0300ed

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->setView(Lcom/iflytek/viafly/weather/WeatherOneDay;)V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    const v1, 0x7f0300ec

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/weather/WeatherOneDay;)Z
    .locals 2
    .param p1, "weather"    # Lcom/iflytek/viafly/weather/WeatherOneDay;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getLowTemp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getHighTemp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getPm25()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getPm25()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getImgPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDayView;->a:Z

    return v0
.end method

.method public getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    return-object v0
.end method

.method public setErrorTip(I)V
    .locals 2
    .param p1, "tipID"    # I

    .prologue
    .line 95
    const v1, 0x7f0b0587

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 96
    .local v0, "errorTip":Lcom/iflytek/base/skin/customView/XTextView;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public setErrorTip(Ljava/lang/String;)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 83
    const v1, 0x7f0b0587

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 84
    .local v0, "errorTip":Lcom/iflytek/base/skin/customView/XTextView;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setView(Lcom/iflytek/viafly/weather/WeatherOneDay;)V
    .locals 3
    .param p1, "weatherOneDay"    # Lcom/iflytek/viafly/weather/WeatherOneDay;

    .prologue
    .line 70
    const v0, 0x7f0b0589

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f0b058a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getLowTemp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getHighTemp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f0b058b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f0b058c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v0, 0x7f0b058d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f0b058e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/weather/WeatherOneDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getImgPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 76
    return-void
.end method
