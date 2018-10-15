.class Lhs$1;
.super Ljava/lang/Object;
.source "SmsDbHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhs;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lhs;


# direct methods
.method constructor <init>(Lhs;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lhs;

    .prologue
    .line 76
    iput-object p1, p0, Lhs$1;->b:Lhs;

    iput-object p2, p0, Lhs$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 80
    iget-object v1, p0, Lhs$1;->a:Landroid/content/Context;

    move-wide v4, v2

    move-wide v6, v2

    invoke-static/range {v1 .. v7}, Lho;->a(Landroid/content/Context;JJJ)V

    .line 81
    iget-object v0, p0, Lhs$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->queryInBoxCount(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lho;->a(I)V

    .line 82
    return-void
.end method
