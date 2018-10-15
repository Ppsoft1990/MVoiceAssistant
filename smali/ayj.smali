.class public Layj;
.super Ljava/lang/Object;
.source "TranslateLanguageIdentifyRequestHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "TranslateLanguageIdentifyRequestHelper"

    iput-object v0, p0, Layj;->a:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Layj;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lajm;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lajm;

    .prologue
    .line 27
    new-instance v0, Layi;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Layj$1;

    invoke-direct {v2, p0, p2}, Layj$1;-><init>(Layj;Lajm;)V

    invoke-direct {v0, v1, v2}, Layi;-><init>(Landroid/content/Context;Lyn;)V

    .line 53
    invoke-virtual {v0, p1}, Layi;->a(Ljava/lang/String;)J

    .line 54
    return-void
.end method
