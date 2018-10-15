.class Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->a(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcn/richinfo/dm/receiver/DMBroadCastReceiver;


# direct methods
.method constructor <init>(Lcn/richinfo/dm/receiver/DMBroadCastReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;->c:Lcn/richinfo/dm/receiver/DMBroadCastReceiver;

    iput-object p2, p0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;->c:Lcn/richinfo/dm/receiver/DMBroadCastReceiver;

    iget-object v1, p0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->a(Lcn/richinfo/dm/receiver/DMBroadCastReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
