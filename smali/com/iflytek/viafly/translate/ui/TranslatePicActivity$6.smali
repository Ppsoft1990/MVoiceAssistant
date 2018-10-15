.class Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$6;
.super Ljava/lang/Object;
.source "TranslatePicActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 167
    const/4 v0, 0x0

    return v0
.end method
