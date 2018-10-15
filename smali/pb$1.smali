.class Lpb$1;
.super Ljava/lang/Object;
.source "FloatWindowPermissionHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpb;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpb;


# direct methods
.method constructor <init>(Lpb;)V
    .locals 0
    .param p1, "this$0"    # Lpb;

    .prologue
    .line 87
    iput-object p1, p0, Lpb$1;->a:Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtnClick(I)V
    .locals 1
    .param p1, "btnId"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lpb$1;->a:Lpb;

    invoke-virtual {v0}, Lpb;->c()V

    .line 91
    return-void
.end method
