.class Lev;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Leu;


# direct methods
.method constructor <init>(Leu;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lev;->b:Leu;

    iput-object p2, p0, Lev;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lev;->b:Leu;

    iget-object v1, p0, Lev;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Leu;->a(Leu;Landroid/location/Location;)V

    return-void
.end method
