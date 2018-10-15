.class public Lya;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "CardsResInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 33
    iput p1, p0, Lya;->c:I

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lya;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lya;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardsDesc"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lya;->b:Ljava/lang/String;

    .line 50
    return-void
.end method
