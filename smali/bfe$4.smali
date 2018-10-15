.class Lbfe$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfe;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfe;


# direct methods
.method constructor <init>(Lbfe;)V
    .locals 0

    iput-object p1, p0, Lbfe$4;->a:Lbfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbfe$4;->a:Lbfe;

    invoke-static {v0}, Lbfe;->b(Lbfe;)V

    return-void
.end method
