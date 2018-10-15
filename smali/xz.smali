.class public Lxz;
.super Ljava/lang/Object;
.source "AdapterInfo.java"

# interfaces
.implements Lcom/iflytek/yd/business/OperationInfo;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lxz;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lxz;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "desInfo"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lxz;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lxz;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lxz;->e:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lxz;->f:Ljava/lang/String;

    .line 66
    return-void
.end method
