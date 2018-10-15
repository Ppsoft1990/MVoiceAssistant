.class Lpe$2;
.super Ljava/lang/Object;
.source "PermissionToast.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpe;->a(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpe;


# direct methods
.method constructor <init>(Lpe;)V
    .locals 0
    .param p1, "this$0"    # Lpe;

    .prologue
    .line 138
    iput-object p1, p0, Lpe$2;->a:Lpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtnClick(I)V
    .locals 1
    .param p1, "btnId"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lpe$2;->a:Lpe;

    invoke-static {v0}, Lpe;->a(Lpe;)V

    .line 142
    return-void
.end method
