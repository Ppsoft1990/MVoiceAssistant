.class final Lly;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lly;->a:Landroid/content/Context;

    iput-object p2, p0, Lly;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lly;->a:Landroid/content/Context;

    const-string/jumbo v1, "iflytek.deviceid.key"

    iget-object v2, p0, Lly;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Llx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
