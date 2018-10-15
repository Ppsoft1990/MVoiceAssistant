.class Lahd$1;
.super Ljava/lang/Object;
.source "HomeLBSHelper.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahd;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahd;


# direct methods
.method constructor <init>(Lahd;)V
    .locals 0
    .param p1, "this$0"    # Lahd;

    .prologue
    .line 110
    iput-object p1, p0, Lahd$1;->a:Lahd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    sget-object v1, Lahd$2;->a:[I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl;

    invoke-virtual {v0}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lahd$1;->a:Lahd;

    invoke-static {v0}, Lahd;->a(Lahd;)Lahd$a;

    move-result-object v0

    invoke-virtual {v0}, Lahd$a;->onGranted()V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lahd$1;->a:Lahd;

    invoke-static {v0}, Lahd;->a(Lahd;)Lahd$a;

    move-result-object v0

    invoke-virtual {v0}, Lahd$a;->onDenied()V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lahd$1;->a:Lahd;

    invoke-static {v0}, Lahd;->a(Lahd;)Lahd$a;

    move-result-object v0

    invoke-virtual {v0}, Lahd$a;->onUnrationale()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
