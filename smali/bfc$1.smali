.class Lbfc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfc;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbfc;


# direct methods
.method constructor <init>(Lbfc;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbfc$1;->b:Lbfc;

    iput-object p2, p0, Lbfc$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbfc$1;->b:Lbfc;

    iget-object v1, p0, Lbfc$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lbfc;->a(Lbfc;Landroid/content/Context;)V

    return-void
.end method
