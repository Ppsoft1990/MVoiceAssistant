.class public Lyi;
.super Ljava/lang/Object;
.source "RunConfigInfo.java"

# interfaces
.implements Lcom/iflytek/yd/business/OperationInfo;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lyi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)V
    .locals 0
    .param p1, "updateType"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .prologue
    .line 67
    iput-object p1, p0, Lyi;->f:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lyi;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public b()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lyi;->f:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lyi;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lyi;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "adsTitle"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lyi;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "adsContent"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lyi;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateInfo"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lyi;->g:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateVesion"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lyi;->i:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadURL"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lyi;->j:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysMessage"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lyi;->k:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lyi;->h:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lyi;->l:Ljava/lang/String;

    .line 116
    return-void
.end method
