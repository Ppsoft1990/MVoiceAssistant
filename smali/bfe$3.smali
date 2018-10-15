.class Lbfe$3;
.super Lbeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfe;->i()V
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

    iput-object p1, p0, Lbfe$3;->a:Lbfe;

    invoke-direct {p0}, Lbeh;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lben;)V
    .locals 1

    iget-object v0, p0, Lbfe$3;->a:Lbfe;

    check-cast p1, Lbei;

    invoke-static {v0, p1}, Lbfe;->a(Lbfe;Lbei;)V

    return-void
.end method
