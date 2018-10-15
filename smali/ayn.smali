.class public Layn;
.super Ljava/lang/Object;
.source "TranslateReportErrorHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "TranslateReportErrorHelper"

    iput-object v0, p0, Layn;->a:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "error_code"

    iput-object v0, p0, Layn;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lajm;)V
    .locals 3
    .param p1, "translateResultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "nickName"    # Ljava/lang/String;
    .param p5, "listener"    # Lajm;

    .prologue
    .line 28
    new-instance v0, Laym;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Layn$1;

    invoke-direct {v2, p0, p5}, Layn$1;-><init>(Layn;Lajm;)V

    invoke-direct {v0, v1, v2}, Laym;-><init>(Landroid/content/Context;Lyn;)V

    .line 48
    invoke-virtual {v0, p1, p2, p3, p4}, Laym;->a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 49
    return-void
.end method
