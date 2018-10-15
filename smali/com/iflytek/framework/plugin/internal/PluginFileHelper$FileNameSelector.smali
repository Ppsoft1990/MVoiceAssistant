.class Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;
.super Ljava/lang/Object;
.source "PluginFileHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileNameSelector"
.end annotation


# instance fields
.field private mFileType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;->mFileType:Ljava/lang/String;

    .line 262
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;->mFileType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
