.class Lfc$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lfc;


# direct methods
.method private constructor <init>(Lfc;)V
    .locals 0

    iput-object p1, p0, Lfc$b;->a:Lfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfc;Lfd;)V
    .locals 0

    invoke-direct {p0, p1}, Lfc$b;-><init>(Lfc;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfc$b;->a:Lfc;

    invoke-static {v0}, Lfc;->b(Lfc;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfc$b;->a:Lfc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfc;->b(Lfc;Z)Z

    iget-object v0, p0, Lfc$b;->a:Lfc;

    invoke-static {v0}, Lfc;->c(Lfc;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfc$b;->a:Lfc;

    invoke-virtual {v0}, Lfc;->j()V

    :cond_0
    return-void
.end method
