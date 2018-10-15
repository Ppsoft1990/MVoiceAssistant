.class Lbfc$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfc;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfc;


# direct methods
.method constructor <init>(Lbfc;)V
    .locals 0

    iput-object p1, p0, Lbfc$5;->a:Lbfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbfc$5;->a:Lbfc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbfc;->a(Lbfc;Z)V

    return-void
.end method
