.class public Lrg;
.super Ljava/lang/Object;
.source "CardsMgrHelper.java"


# static fields
.field private static a:Lrg;


# instance fields
.field private b:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lrg;

    invoke-direct {v0}, Lrg;-><init>()V

    sput-object v0, Lrg;->a:Lrg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lrg;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lrg;->a:Lrg;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V
    .locals 0
    .param p1, "homeWebView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 26
    iput-object p1, p0, Lrg;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lrg;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCardState(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 36
    return-void
.end method
