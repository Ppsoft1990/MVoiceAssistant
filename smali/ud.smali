.class public Lud;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "AppFilterResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lud;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lud;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lud;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchUrl"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lud;->b:Ljava/lang/String;

    .line 24
    return-void
.end method
