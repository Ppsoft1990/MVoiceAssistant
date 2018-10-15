.class final Lcn/richinfo/dm/util/LogToFile$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/richinfo/dm/util/LogToFile;->writeToFile(CLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$type:C


# direct methods
.method constructor <init>(CLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-char p1, p0, Lcn/richinfo/dm/util/LogToFile$1;->val$type:C

    iput-object p2, p0, Lcn/richinfo/dm/util/LogToFile$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcn/richinfo/dm/util/LogToFile$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-char v0, p0, Lcn/richinfo/dm/util/LogToFile$1;->val$type:C

    iget-object v1, p0, Lcn/richinfo/dm/util/LogToFile$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcn/richinfo/dm/util/LogToFile$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/richinfo/dm/util/LogToFile;->access$000(CLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
