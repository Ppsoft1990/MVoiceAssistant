.class public Lcom/iflytek/viafly/Home$b;
.super Ljava/lang/Object;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Z

.field public k:J

.field public l:Z

.field final synthetic m:Lcom/iflytek/viafly/Home;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 3
    .param p1, "this$0"    # Lcom/iflytek/viafly/Home;

    .prologue
    const/4 v2, 0x0

    .line 256
    iput-object p1, p0, Lcom/iflytek/viafly/Home$b;->m:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean v2, p0, Lcom/iflytek/viafly/Home$b;->a:Z

    .line 266
    iput-boolean v2, p0, Lcom/iflytek/viafly/Home$b;->b:Z

    .line 268
    iput-boolean v2, p0, Lcom/iflytek/viafly/Home$b;->c:Z

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/Home$b;->e:Z

    .line 280
    iput v2, p0, Lcom/iflytek/viafly/Home$b;->f:I

    .line 282
    iput-boolean v2, p0, Lcom/iflytek/viafly/Home$b;->g:Z

    .line 287
    iput-boolean v2, p0, Lcom/iflytek/viafly/Home$b;->h:Z

    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/Home$b;->k:J

    .line 298
    iput-boolean v2, p0, Lcom/iflytek/viafly/Home$b;->l:Z

    return-void
.end method
