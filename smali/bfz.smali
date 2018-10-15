.class public Lbfz;
.super Lbfy;


# static fields
.field public static final a:Lbft;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbft;

    invoke-direct {v0}, Lbft;-><init>()V

    sput-object v0, Lbfz;->a:Lbft;

    const-string/jumbo v1, "A9VH9B8L4GX4"

    invoke-virtual {v0, v1}, Lbft;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lbfz;->a:Lbft;

    invoke-direct {p0, p1, v0, v1}, Lbfy;-><init>(Landroid/content/Context;ILbft;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, "actky"

    iget-object v1, p0, Lbfz;->l:Landroid/content/Context;

    invoke-static {v1}, Lbfq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->i:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method
