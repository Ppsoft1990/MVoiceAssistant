.class Lamc$a;
.super Ljava/lang/Object;
.source "TextEventPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lamc;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lamc;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lamc$a;->a:Lamc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string/jumbo v0, "TextEventRequestHelper"

    iput-object v0, p0, Lamc$a;->b:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lamc$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lamc;Lamc$1;)V
    .locals 0
    .param p1, "x0"    # Lamc;
    .param p2, "x1"    # Lamc$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lamc$a;-><init>(Lamc;)V

    return-void
.end method


# virtual methods
.method public a(Lajm;)V
    .locals 3
    .param p1, "listener"    # Lajm;

    .prologue
    .line 111
    new-instance v0, Lamb;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lamc$a$1;

    invoke-direct {v2, p0, p1}, Lamc$a$1;-><init>(Lamc$a;Lajm;)V

    invoke-direct {v0, v1, v2}, Lamb;-><init>(Landroid/content/Context;Lyn;)V

    .line 143
    invoke-virtual {v0}, Lamb;->a()J

    .line 144
    return-void
.end method
