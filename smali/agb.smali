.class public Lagb;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "WeatherFilterResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lagb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCity"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lagb;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "mForecasts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    iput-object p1, p0, Lagb;->c:Ljava/util/List;

    .line 34
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lagb;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mInterestDate"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lagb;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lagb;->b:Ljava/lang/String;

    return-object v0
.end method
