.class public Layg;
.super Ljava/lang/Object;
.source "TranslateEntryRequestHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "TranslateEntryRequestHelper"

    iput-object v0, p0, Layg;->a:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "error_code"

    iput-object v0, p0, Layg;->b:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Layg;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lajm;)V
    .locals 3
    .param p1, "listener"    # Lajm;

    .prologue
    .line 29
    new-instance v0, Laye;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Layg$1;

    invoke-direct {v2, p0, p1}, Layg$1;-><init>(Layg;Lajm;)V

    invoke-direct {v0, v1, v2}, Laye;-><init>(Landroid/content/Context;Lyn;)V

    .line 53
    invoke-virtual {v0}, Laye;->a()J

    .line 54
    return-void
.end method
