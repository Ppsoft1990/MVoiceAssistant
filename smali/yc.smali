.class public Lyc;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "CustomizeInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lyc;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lyc;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lyc;->c:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lyc;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lyc;->e:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkText"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lyc;->f:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lyc;->g:Ljava/lang/String;

    .line 69
    return-void
.end method
