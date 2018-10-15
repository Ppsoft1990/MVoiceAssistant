.class public abstract Ldd;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:F

.field public d:F

.field public e:Ljava/lang/String;

.field public f:D

.field public g:D

.field public h:I

.field public i:Z

.field public j:Lcom/baidu/location/d/a;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ldd;->a:D

    iput-wide v0, p0, Ldd;->b:D

    iput v2, p0, Ldd;->c:F

    iput v2, p0, Ldd;->d:F

    iput-object v4, p0, Ldd;->e:Ljava/lang/String;

    iput-wide v0, p0, Ldd;->f:D

    iput-wide v0, p0, Ldd;->g:D

    iput v3, p0, Ldd;->h:I

    iput-boolean v3, p0, Ldd;->i:Z

    iput-object v4, p0, Ldd;->j:Lcom/baidu/location/d/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;F)V
    .locals 3

    const-string/jumbo v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new location, not far from the destination..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
