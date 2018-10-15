.class Lbic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbhz;

.field final synthetic c:Lbia;


# direct methods
.method constructor <init>(Lbia;Ljava/util/List;Lbhz;)V
    .locals 0

    iput-object p1, p0, Lbic;->c:Lbia;

    iput-object p2, p0, Lbic;->a:Ljava/util/List;

    iput-object p3, p0, Lbic;->b:Lbhz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lbic;->c:Lbia;

    iget-object v1, p0, Lbic;->a:Ljava/util/List;

    iget-object v2, p0, Lbic;->b:Lbhz;

    invoke-virtual {v0, v1, v2}, Lbia;->a(Ljava/util/List;Lbhz;)V

    return-void
.end method
