<?php

namespace App\Models\User;

use App\Traits\Scopes;
use Illuminate\Database\Eloquent\Model;

class Import_csv_log extends Model
{
    use Scopes;
    protected $table = 'import_csv_logs';

    public $sortable=[
        'filename','file_path','model_name','error_log'
    ];

    /**
     * @var array
     */

    protected $fillable = ['filename','file_path','model_name','error_log'];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];


    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        //
        'id'         => 'string',
        'filename'   => 'string',
        'file_path'  => 'string',
        'model_name' => 'string',
        'created_at' => 'string',
        'updated_at' => 'string'
    ];

    /**
     * @param $value
     * @return \Illuminate\Contracts\Routing\UrlGenerator|string
     */
    public function getFilePathAttribute($value){
        if ($value == NULL)
            return "";
        return url(config('constants.image.dir_path') . $value);
    }
}
