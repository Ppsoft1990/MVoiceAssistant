.class Lcom/iflytek/framework/business/components/ShareComponents$1;
.super Ljava/lang/Object;
.source "ShareComponents.java"

# interfaces
.implements Lcom/iflytek/framework/ui/share/IShareResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/ShareComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/ShareComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/ShareComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/ShareComponents;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/iflytek/framework/business/components/ShareComponents$1;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string/jumbo v0, "Business_ShareComponents"

    const-string/jumbo v1, "onSuccess  "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$1;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-static {v0, p1}, Lcom/iflytek/framework/business/components/ShareComponents;->access$000(Lcom/iflytek/framework/business/components/ShareComponents;I)V

    .line 249
    return-void
.end method
