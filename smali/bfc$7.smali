.class Lbfc$7;
.super Lbeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfc;->a(Z)V
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

    iput-object p1, p0, Lbfc$7;->a:Lbfc;

    invoke-direct {p0}, Lbeh;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lben;)V
    .locals 1

    iget-object v0, p0, Lbfc$7;->a:Lbfc;

    check-cast p1, Lbfe;

    invoke-static {v0, p1}, Lbfc;->a(Lbfc;Lbfe;)V

    return-void
.end method
