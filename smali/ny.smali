.class public Lny;
.super Lnz;
.source "BaiduLocateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lny$b;,
        Lny$a;
    }
.end annotation


# static fields
.field private static f:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ldf;

.field private c:Lny$b;

.field private d:Landroid/content/Context;

.field private e:I

.field private g:Lny$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lny;->f:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Lnz;-><init>()V

    .line 25
    const-string/jumbo v0, "LBS_MapBaiduLocateManager"

    iput-object v0, p0, Lny;->a:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lny;->g:Lny$a;

    .line 38
    iput-object p1, p0, Lny;->d:Landroid/content/Context;

    .line 39
    new-instance v0, Lny$b;

    invoke-direct {v0, p0}, Lny$b;-><init>(Lny;)V

    iput-object v0, p0, Lny;->c:Lny$b;

    .line 40
    new-instance v0, Ldf;

    invoke-direct {v0, p1}, Ldf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lny;->b:Ldf;

    .line 41
    iget-object v0, p0, Lny;->b:Ldf;

    iget-object v1, p0, Lny;->c:Lny$b;

    invoke-virtual {v0, v1}, Ldf;->b(Ldc;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lny;)I
    .locals 2
    .param p0, "x0"    # Lny;

    .prologue
    .line 24
    iget v0, p0, Lny;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lny;->e:I

    return v0
.end method

.method static synthetic b(Lny;)I
    .locals 1
    .param p0, "x0"    # Lny;

    .prologue
    .line 24
    iget v0, p0, Lny;->e:I

    return v0
.end method

.method static synthetic c(Lny;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lny;

    .prologue
    .line 24
    iget-object v0, p0, Lny;->d:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 154
    const-string/jumbo v1, "LBS_MapBaiduLocateManager"

    const-string/jumbo v2, "------------>>> setLocationOption()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lny;->b:Ldf;

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 161
    .local v0, "option":Lcom/baidu/location/LocationClientOption;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->a(Z)V

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->b(Z)V

    .line 165
    const-string/jumbo v1, "gcj02"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->a(Ljava/lang/String;)V

    .line 166
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->a(I)V

    .line 169
    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->a(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 171
    const-string/jumbo v1, "iiiiiiiiii"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->b(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lny;->b:Ldf;

    invoke-virtual {v1, v0}, Ldf;->a(Lcom/baidu/location/LocationClientOption;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lny;->b:Ldf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lny;->b:Ldf;

    invoke-virtual {v1}, Ldf;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-direct {p0}, Lny;->e()V

    .line 58
    iget-object v1, p0, Lny;->b:Ldf;

    invoke-virtual {v1}, Ldf;->c()V

    .line 59
    const-string/jumbo v1, "LBS_MapBaiduLocateManager"

    const-string/jumbo v2, "------------>>> start()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string/jumbo v1, "LBS_MapBaiduLocateManager"

    const-string/jumbo v2, "------------>> \u6b63\u5728\u5b9a\u4f4d\u4e2d"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LBS_MapBaiduLocateManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 254
    invoke-virtual {p0}, Lny;->setChanged()V

    .line 255
    invoke-virtual {p0, p1}, Lny;->notifyObservers(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "LBS_MapBaiduLocateManager"

    const-string/jumbo v1, "------------>>> stop()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lny;->e:I

    .line 136
    iget-object v0, p0, Lny;->b:Ldf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lny;->b:Ldf;

    invoke-virtual {v0}, Ldf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lny;->b:Ldf;

    invoke-virtual {v0}, Ldf;->d()V

    .line 139
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lny;->b:Ldf;

    invoke-virtual {v0}, Ldf;->b()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method
