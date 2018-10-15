.class public Lcom/iflytek/yd/speech/BaseRecognizeFilter;
.super Lcom/iflytek/yd/speech/RecognizeFilter;


# instance fields
.field private mFilterResult:Lcom/iflytek/yd/speech/BaseFilterResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "RecognizeFilter"

    const-string/jumbo v1, "recognize result is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/iflytek/yd/speech/BaseFilterResult;

    invoke-direct {v0}, Lcom/iflytek/yd/speech/BaseFilterResult;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->mFilterResult:Lcom/iflytek/yd/speech/BaseFilterResult;

    iget-object v0, p0, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->mFilterResult:Lcom/iflytek/yd/speech/BaseFilterResult;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->mFilterResult:Lcom/iflytek/yd/speech/BaseFilterResult;

    goto :goto_0
.end method
