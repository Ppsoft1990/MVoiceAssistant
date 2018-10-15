.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/util/List;

.field private a:I

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Z

.field private f:D

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:I

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lda;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldb;

    invoke-direct {v0}, Ldb;-><init>()V

    sput-object v0, Lcom/baidu/location/BDLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-wide v4, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v4, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v4, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->g:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v0, Lda$a;

    invoke-direct {v0}, Lda$a;-><init>()V

    invoke-virtual {v0}, Lda$a;->a()Lda;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v2, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v0, Lda$a;

    invoke-direct {v0}, Lda$a;-><init>()V

    invoke-virtual {v0}, Lda$a;->a()Lda;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v1, p0, Lcom/baidu/location/BDLocation;->z:I

    iput v4, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lda$a;

    invoke-direct {v8}, Lda$a;-><init>()V

    invoke-virtual {v8, v6}, Lda$a;->a(Ljava/lang/String;)Lda$a;

    move-result-object v6

    invoke-virtual {v6, v7}, Lda$a;->b(Ljava/lang/String;)Lda$a;

    move-result-object v6

    invoke-virtual {v6, v0}, Lda$a;->c(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lda$a;->d(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lda$a;->e(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lda$a;->f(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lda$a;->g(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lda$a;->h(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0}, Lda$a;->a()Lda;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->A:I

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/baidu/location/Poi;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iput-object v9, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    :goto_1
    return-void

    :cond_0
    iput-object v0, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Ldb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    iput v1, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v1, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v1, Lda$a;

    invoke-direct {v1}, Lda$a;-><init>()V

    invoke-virtual {v1}, Lda$a;->a()Lda;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    iget v1, p1, Lcom/baidu/location/BDLocation;->a:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->a:I

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->d:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->e:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->f:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->g:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    iget v1, p1, Lcom/baidu/location/BDLocation;->h:F

    iput v1, p0, Lcom/baidu/location/BDLocation;->h:F

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->i:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    iget v1, p1, Lcom/baidu/location/BDLocation;->j:F

    iput v1, p0, Lcom/baidu/location/BDLocation;->j:F

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->k:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    iget v1, p1, Lcom/baidu/location/BDLocation;->l:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->l:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->m:F

    iput v1, p0, Lcom/baidu/location/BDLocation;->m:F

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->o:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->t:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v1, Lda$a;

    invoke-direct {v1}, Lda$a;-><init>()V

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->a(Ljava/lang/String;)Lda$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->b(Ljava/lang/String;)Lda$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->c(Ljava/lang/String;)Lda$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->d(Ljava/lang/String;)Lda$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->e(Ljava/lang/String;)Lda$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->f(Ljava/lang/String;)Lda$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->g(Ljava/lang/String;)Lda$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v2, v2, Lda;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lda$a;->h(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1}, Lda$a;->a()Lda;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/BDLocation;->A:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->A:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->z:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->z:I

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->y:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->y:Z

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/BDLocation;->C:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->C:I

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    if-nez v1, :cond_0

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    iget-object v0, p1, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/Poi;

    new-instance v3, Lcom/baidu/location/Poi;

    invoke-virtual {v0}, Lcom/baidu/location/Poi;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/location/Poi;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/baidu/location/Poi;->b()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14

    const/4 v13, 0x2

    const-wide/16 v2, 0x1

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v8, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v1, Lda$a;

    invoke-direct {v1}, Lda$a;-><init>()V

    invoke-virtual {v1}, Lda$a;->a()Lda;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v8, p0, Lcom/baidu/location/BDLocation;->z:I

    iput v12, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/baidu/location/BDLocation;->a(I)V

    const-string/jumbo v4, "time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/String;)V

    const/16 v2, 0x3d

    if-ne v3, v2, :cond_5

    const-string/jumbo v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->a(D)V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->b(D)V

    const-string/jumbo v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->b(F)V

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->a(F)V

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->c(F)V

    const-string/jumbo v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->b(I)V

    const-string/jumbo v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string/jumbo v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->c(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_1
    :try_start_2
    const-string/jumbo v1, "in_cn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "in_cn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->c(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    if-nez v0, :cond_4

    const-string/jumbo v0, "wgs84"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v8, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-boolean v8, p0, Lcom/baidu/location/BDLocation;->o:Z

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->c(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :try_start_5
    const-string/jumbo v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xa1

    if-ne v3, v2, :cond_17

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v1, "point"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->a(D)V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->b(D)V

    const-string/jumbo v1, "radius"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->b(F)V

    const-string/jumbo v1, "sema"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "sema"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v1, "aptag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "aptag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    :cond_6
    :goto_3
    const-string/jumbo v1, "aptagd"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "aptagd"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "pois"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v8

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_8

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "pname"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "pr"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    new-instance v5, Lcom/baidu/location/Poi;

    invoke-direct {v5, v7, v6, v10, v11}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iput-object v4, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    :cond_9
    const-string/jumbo v1, "poiregion"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "poiregion"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    :cond_a
    const-string/jumbo v1, "regular"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "regular"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    :cond_b
    const-string/jumbo v1, "addr"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "addr"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    if-lez v11, :cond_20

    const/4 v1, 0x0

    aget-object v1, v10, v1

    move-object v7, v1

    :goto_5
    if-le v11, v12, :cond_1f

    const/4 v1, 0x1

    aget-object v1, v10, v1

    move-object v6, v1

    :goto_6
    if-le v11, v13, :cond_1e

    const/4 v1, 0x2

    aget-object v1, v10, v1

    move-object v5, v1

    :goto_7
    const/4 v1, 0x3

    if-le v11, v1, :cond_1d

    const/4 v1, 0x3

    aget-object v1, v10, v1

    move-object v4, v1

    :goto_8
    const/4 v1, 0x4

    if-le v11, v1, :cond_1c

    const/4 v1, 0x4

    aget-object v1, v10, v1

    move-object v3, v1

    :goto_9
    const/4 v1, 0x5

    if-le v11, v1, :cond_1b

    const/4 v1, 0x5

    aget-object v1, v10, v1

    move-object v2, v1

    :goto_a
    const/4 v1, 0x6

    if-le v11, v1, :cond_1a

    const/4 v1, 0x6

    aget-object v1, v10, v1

    :goto_b
    const/4 v12, 0x7

    if-le v11, v12, :cond_c

    const/4 v0, 0x7

    aget-object v0, v10, v0

    :cond_c
    new-instance v10, Lda$a;

    invoke-direct {v10}, Lda$a;-><init>()V

    invoke-virtual {v10, v1}, Lda$a;->a(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lda$a;->b(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lda$a;->c(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lda$a;->d(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lda$a;->e(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lda$a;->f(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lda$a;->g(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lda$a;->h(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0}, Lda$a;->a()Lda;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    :goto_c
    const-string/jumbo v0, "floor"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "floor"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    :cond_d
    const-string/jumbo v0, "loctp"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "loctp"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    :cond_e
    const-string/jumbo v0, "bldgid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "bldgid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    :cond_f
    const-string/jumbo v0, "bldg"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "bldg"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    :cond_10
    const-string/jumbo v0, "ibav"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "ibav"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_11
    :goto_d
    :try_start_6
    const-string/jumbo v0, "in_cn"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "in_cn"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->c(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_e
    :try_start_7
    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    if-nez v0, :cond_16

    const-string/jumbo v0, "wgs84"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_13
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    goto :goto_d

    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_d

    :cond_15
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->c(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_16
    :try_start_9
    const-string/jumbo v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x42

    if-eq v3, v0, :cond_18

    const/16 v0, 0x44

    if-ne v3, v0, :cond_19

    :cond_18
    const-string/jumbo v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->a(D)V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->b(D)V

    const-string/jumbo v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->b(F)V

    const-string/jumbo v1, "isCellChanged"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/Boolean;)V

    const-string/jumbo v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0xa7

    if-ne v3, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->c(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_1

    :cond_1a
    move-object v1, v0

    goto/16 :goto_b

    :cond_1b
    move-object v2, v0

    goto/16 :goto_a

    :cond_1c
    move-object v3, v0

    goto/16 :goto_9

    :cond_1d
    move-object v4, v0

    goto/16 :goto_8

    :cond_1e
    move-object v5, v0

    goto/16 :goto_7

    :cond_1f
    move-object v6, v0

    goto/16 :goto_6

    :cond_20
    move-object v7, v0

    goto/16 :goto_5
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->c:D

    return-void
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->a:I

    return-void
.end method

.method public a(Lda;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    return-void
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    return-wide v0
.end method

.method public b(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->d:D

    return-void
.end method

.method public b(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-void
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    return-wide v0
.end method

.method public c(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->f:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return-void
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->m:F

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->A:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    goto :goto_0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->C:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    return v0
.end method

.method public h()Lda;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lda;

    iget-object v0, v0, Lda;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->i:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->k:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->o:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->t:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->y:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->E:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
