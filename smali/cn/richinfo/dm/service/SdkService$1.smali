.class Lcn/richinfo/dm/service/SdkService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/richinfo/dm/service/SdkService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/richinfo/dm/service/SdkService;


# direct methods
.method constructor <init>(Lcn/richinfo/dm/service/SdkService;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/service/SdkService$1;->a:Lcn/richinfo/dm/service/SdkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/service/SdkService$1;->a:Lcn/richinfo/dm/service/SdkService;

    invoke-static {v0}, Lcn/richinfo/dm/a/a;->a(Landroid/content/Context;)Lcn/richinfo/dm/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/richinfo/dm/a/a;->a()V

    return-void
.end method
