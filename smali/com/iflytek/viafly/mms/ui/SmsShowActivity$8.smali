.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$8;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/base/mms/entities/SmsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/mms/entities/SmsItem;

.field final synthetic b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$8;->b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$8;->a:Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1253
    const-string/jumbo v0, "delete"

    invoke-static {v0}, Labv;->b(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$8;->b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$8;->a:Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 1255
    return-void
.end method
