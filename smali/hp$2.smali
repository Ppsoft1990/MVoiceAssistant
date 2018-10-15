.class Lhp$2;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhp;->a(Landroid/content/Context;Lhv;Lhr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhr;

.field final synthetic b:Lhp;


# direct methods
.method constructor <init>(Lhp;Lhr;)V
    .locals 0
    .param p1, "this$0"    # Lhp;

    .prologue
    .line 222
    iput-object p1, p0, Lhp$2;->b:Lhp;

    iput-object p2, p0, Lhp$2;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, "success":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lhp$2;->a:Lhr;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lhp$2;->a:Lhr;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lhr;->a(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 229
    :cond_0
    return-void
.end method
