.class public Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;
.super Ljava/lang/Object;
.source "AbsRequestCategory.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;)V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>.WeatherRequestListener;"
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;->this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;
    .param p2, "x1"    # Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$1;

    .prologue
    .line 81
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>.WeatherRequestListener;"
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;-><init>(Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;)V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 85
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>.WeatherRequestListener;"
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;->this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requestType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;->this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->onFail(IJI)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;->this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->onSuccess(Lcom/iflytek/yd/business/OperationInfo;JI)V

    goto :goto_0
.end method
