.class public Lbbq;
.super Ljava/lang/Object;
.source "ScheduleWeatherBizHelper.java"

# interfaces
.implements Lyn;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lbbs;

.field private c:Lwd;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lbbq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lbbs;

    invoke-direct {v0, p1, p0}, Lbbs;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lbbq;->b:Lbbs;

    .line 30
    iput-object p1, p0, Lbbq;->d:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lbbq;->c:Lwd;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;)J
    .locals 6
    .param p1, "dataSrcId"    # Ljava/lang/String;
    .param p2, "dataSrcName"    # Ljava/lang/String;
    .param p3, "addressArray"    # Lcom/iflytek/common/lbs/XAddress;

    .prologue
    .line 35
    iget-object v0, p0, Lbbq;->b:Lbbs;

    const/4 v4, 0x0

    const-string/jumbo v5, "localWeather"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 40
    const/16 v1, 0x18

    if-ne p5, v1, :cond_1

    .line 41
    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    .line 42
    :cond_0
    iget-object v1, p0, Lbbq;->c:Lwd;

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lbbq;->c:Lwd;

    invoke-interface {v1, p5, p3, p4, p1}, Lwd;->a(IJI)V

    .line 56
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p2

    .line 47
    check-cast v0, Lwa;

    .line 50
    .local v0, "bres":Lwa;
    iget-object v1, p0, Lbbq;->c:Lwd;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lbbq;->c:Lwd;

    invoke-interface {v1, v0}, Lwd;->a(Lwa;)V

    goto :goto_0
.end method
